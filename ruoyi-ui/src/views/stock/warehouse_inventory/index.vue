<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商品名称" prop="goodsId">
        <el-select v-model="queryParams.goodsId" filterable placeholder="请选择商品">
          <el-option
            v-for="item in goods_options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
      </el-form-item>
      <el-form-item label="数量" prop="sum">
        <el-input
          v-model="queryParams.sum"
          placeholder="请输入数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['stock:warehouse_inventory:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['stock:warehouse_inventory:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['stock:warehouse_inventory:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['stock:warehouse_inventory:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="warehouse_inventoryList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="主键" align="center" prop="id" />
      <el-table-column label="仓库名" align="center" prop="warehouseName" />
      <el-table-column label="商品名" align="center" prop="goodsName" />
      <el-table-column label="数量" align="center" prop="sum" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['stock:warehouse_inventory:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['stock:warehouse_inventory:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改仓库库存管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="商品id" prop="goodsId">
          <el-select v-model="form.goodsId" filterable placeholder="请选择商品">
            <el-option
              v-for="item in goods_options"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="数量" prop="sum">
          <el-input v-model="form.sum" placeholder="请输入数量" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listWarehouse_inventory, getWarehouse_inventory, delWarehouse_inventory, addWarehouse_inventory, updateWarehouse_inventory } from "@/api/stock/warehouse_inventory";
import { getUserProfile } from "@/api/system/user";
import { listApplication, listGoodsLT } from "@/api/distribute/application";

export default {
  name: "Warehouse_inventory",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 仓库库存管理表格数据
      warehouse_inventoryList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      goods_options: [],
      warehouse_options: [], // 添加仓库选项
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        warehouseId: null,
        goodsId: null,
        sum: null,
        shopId: null // 添加shopId参数
      },
      // 表单参数
      form: {
        id: null,
        warehouseId: null,
        goodsId: null,
        sum: null,
      },
      // 表单校验
      rules: {
        warehouseId: [
          { required: true, message: "仓库id不能为空", trigger: "blur" }
        ],
        goodsId: [
          { required: true, message: "商品id不能为空", trigger: "blur" }
        ],
      },
      // 仓库列表
      warehouseList: [] // 新增仓库列表数据
    };
  },
  created() {
    this.getUserDeptId(); // 获取当前用户的dept_id
    this.getList();
    this.getGoods();
  },
  methods: {
    getUserDeptId() {
      getUserProfile().then(response => {
        this.user = response.data;
        // this.queryParams.shopId = this.user.dept.deptId; // 填充shopId
        this.form.warehouseId = this.user.dept.deptId; // 填充分部
      });
    },
    getGoods() {
      listGoodsLT().then(response => {
        this.goods_options = response;
      });
    },
    // 查询仓库库存管理列表
    getList() {
      this.loading = true;
      listWarehouse_inventory(this.queryParams).then(response => {
        this.warehouse_inventoryList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        goodsId: null,
        sum: null,
        warehouseId: this.user.dept.deptId // 重置时也填充分部
      };
      this.resetForm("form");
    },
    // 搜索按钮操作
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    // 重置按钮操作
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length !== 1
      this.multiple = !selection.length
    },
    // 新增按钮操作
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加仓库库存管理";
    },
    // 修改按钮操作
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getWarehouse_inventory(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改仓库库存管理";
      });
    },
    // 提交按钮
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateWarehouse_inventory(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addWarehouse_inventory(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    // 删除按钮操作
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除仓库库存管理编号为"' + ids + '"的数据项？').then(function() {
        return delWarehouse_inventory(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    // 导出按钮操作
    handleExport() {
      this.download('stock/warehouse_inventory/export', {
        ...this.queryParams
      }, `warehouse_inventory_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>

