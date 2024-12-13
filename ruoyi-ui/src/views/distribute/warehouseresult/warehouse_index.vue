<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="超市名称" prop="shopId">
        <el-input
          v-model="queryParams.shopName"
          placeholder="请输入超市名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品名称" prop="goodId">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入商品名称"
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
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['distribute:distributeresult:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="distributeresultList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="主键" align="center" prop="id" />
      <el-table-column label="超市ID" align="center" prop="shopId" />
      <el-table-column label="超市名称" align="center" prop="shopName" />
      <el-table-column label="商品id" align="center" prop="goodId" />
      <el-table-column label="商品名称" align="center" prop="name" />
      <el-table-column label="数量" align="center" prop="count" />
      <el-table-column label="调拨时间" align="center" prop="time" />
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改分配调拨对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="超市id" prop="shopId">
          <el-input v-model="form.shopId" placeholder="请输入超市id" />
        </el-form-item>
        <el-form-item label="商品id" prop="goodId">
          <el-input v-model="form.goodId" placeholder="请输入商品id" />
        </el-form-item>
        <el-form-item label="数量" prop="count">
          <el-input v-model="form.count" placeholder="请输入数量" />
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
import {
  listDistributeresult,
  getDistributeresult,
  delDistributeresult,
  addDistributeresult,
  updateDistributeresult,
  getInvSummary, getApSummary, calAllocation, subCgCalAllocation, subCgDistributeRes
} from "@/api/distribute/distributeresult";
import {getUserProfile} from "@/api/system/user";

export default {
  name: "Distributeresult",
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
      // 分配调拨表格数据
      distributeresultList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      dept_id: null,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        shopName: null,
        warehouseName: null,
        name: null
      },
      //分配方案
      calAllocationData: [],
      //申请汇总数据
      summaryData: [],
      //调拨结果数据
      distributeresultData: [],
      //库存汇总数据
      InvsummaryData: [],
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        shopId: [
          {required: true, message: "超市id不能为空", trigger: "blur"}
        ],
        warehouseId: [
          {required: true, message: "仓库id不能为空", trigger: "blur"}
        ],
        goodId: [
          {required: true, message: "商品id不能为空", trigger: "blur"}
        ],
      },
      rowSpanArr: [],
      rowSpanArr2: [],
      position: 0,
    };
  },
  created() {
    this.getUserAndList();
  },
  methods: {
    /** 获取当前用户信息 */
    getUser() {
      return getUserProfile().then(response => {
        this.user = response.data;
        this.queryParams.warehouseId = this.user.dept.deptId;
      });
    },
    getUserAndList() {
      this.getUser().then(() => {
        this.getList();
      });
    },
    /** 查询分配调拨列表 */
    getList() {
      this.loading = true;
      this.queryParams.warehouseId = this.user.dept.deptId;
      listDistributeresult(this.queryParams).then(response => {
        this.distributeresultList = response.rows;
        console.log(response.rows);
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
        shopName: null,
        warehouseName: null,
        name: null,
        count: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.warehouseId = this.user.dept.deptId;
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加分配调拨";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getDistributeresult(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改分配调拨";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateDistributeresult(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addDistributeresult(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除分配调拨编号为"' + ids + '"的数据项？').then(function() {
        return delDistributeresult(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('distribute/distributeresult/export', {
        ...this.queryParams
      }, `distributeresult_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
<style>
.el-table .warning-row {
  background: oldlace;
}
.el-table .success-row {
  background: #f0f9eb;
}
</style>
