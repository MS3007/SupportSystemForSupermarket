<template>
  <div class="app-container">
    <el-row>
    <el-col :span="20"><el-steps :active="active" finish-status="success" align-center>
      <el-step title="物资申请汇总"></el-step>
      <el-step title="可供应库存汇总"></el-step>
      <el-step title="物资分配方案制定"></el-step>
      <el-step title="物资调拨结果"></el-step>
    </el-steps>
    </el-col>
      <el-col :span="4">
        <el-button style="margin-top: 12px;" @click="prev">上一步</el-button>
        <el-button style="margin-top: 12px;" :disabled="next_able" @click="next">下一步</el-button>
      </el-col>
  </el-row>


    <transition name="el-fade-in">
      <div v-show="active === 0">
        <h1>申请汇总</h1>
        <right-toolbar @queryTable="fetchSummaryData"></right-toolbar>
        <el-table v-loading="loading" :data="summaryData" :span-method="objectSpanMethod" @selection-change="handleSelectionChange">
          <el-table-column label="序号" type="index" width="50" />
          <el-table-column label="超市ID" align="center" prop="shop_id" />
          <el-table-column label="超市名称" align="center" prop="shop_name" />
          <el-table-column label="商品ID" align="center" prop="good_id" />
          <el-table-column label="商品名称" align="center" prop="name" />
          <el-table-column label="数量" align="center" prop="total_count" />
        </el-table>
      </div>
    </transition>
    <transition name="el-fade-in">
    <div v-show="active === 1">
      <h1>可供应库存汇总</h1>
      <el-table v-loading="loading" :data="InvsummaryData" :span-method="objectSpanMethod" @selection-change="handleSelectionChange">
        <el-table-column label="序号" type="index" width="50" />
        <el-table-column label="仓库ID" align="center" prop="warehouse_id" />
        <el-table-column label="仓库名称" align="center" prop="warehouse_name" />
        <el-table-column label="商品ID" align="center" prop="good_id" />
        <el-table-column label="商品名称" align="center" prop="name" />
        <el-table-column label="数量" align="center" prop="total_count" />
      </el-table>

    </div>
    </transition>
    <transition name="el-fade-in">
    <div v-show="active === 2">
      <el-row >
        <el-col :span="21"><h1>物资分配方案人工干预</h1> </el-col>
        <el-col :span="3"><h1><el-button type="primary" :disabled="!next_able"  @click="chgCalAllocation">提交调整</el-button></h1></el-col>
      </el-row>
      <el-table v-loading="loading" :data="calAllocationData"  :span-method="objectSpanMethod" :row-class-name="tableRowClassName" @selection-change="handleSelectionChange">
        <el-table-column label="序号" type="index" width="50" />
        <el-table-column label="超市ID" align="center" prop="shop_id" />
        <el-table-column label="超市名称" align="center" prop="shop_name" />
        <el-table-column label="商品ID" align="center" prop="good_id" />
        <el-table-column label="商品名称" align="center" prop="name" />
        <el-table-column label="调整前数量" align="center" prop="total_count" />
        <el-table-column label="调整后数量" align="center" prop="change_count">
          <template slot-scope="scope">
            <el-input-number size="mini" :disabled="!next_able" v-model="scope.row.change_count" controls-position="right" :min="1" :max="72"></el-input-number>
          </template>
        </el-table-column>
      </el-table>

    </div>
    </transition>
    <transition name="el-fade-in">
      <div v-show="active === 3">
        <el-row >
          <el-col :span="21"><h1>物资调拨结果人工干预</h1> </el-col>
          <el-col :span="3"><h1><el-button type="primary" :disabled="!next_able"  @click="submitDis">提交调整</el-button></h1></el-col>
        </el-row>
        <el-table v-loading="loading" :data="distributeresultData"  :span-method="objectSpanMethod2"  @selection-change="handleSelectionChange">
          <el-table-column label="序号" type="index" width="50" />
          <el-table-column label="商品ID" align="center" prop="good_id" />
          <el-table-column label="商品名称" align="center" prop="name" />
          <el-table-column label="仓库ID" align="center" prop="warehouse_id" />
          <el-table-column label="仓库名称" align="center" prop="warehouse_name" />
          <el-table-column label="超市ID" align="center" prop="shop_id" />
          <el-table-column label="超市名称" align="center" prop="shop_name" />
          <el-table-column label="仓库库存量" align="center" prop="sum" />
          <el-table-column label="调拨数量" align="center" prop="allocation_count" >
            <template slot-scope="scope">
              <el-input-number size="mini" :disabled="!next_able" v-model="scope.row.allocation_count" controls-position="right" :min="1" :max="72"></el-input-number>
            </template>
          </el-table-column>
        </el-table>

      </div>
    </transition>
    <transition name="el-fade-in">
    <div v-show="active === 4">

        <h1>物资调拨</h1>
        <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
          <el-form-item label="超市名称" prop="shopId">
            <el-input
              v-model="queryParams.shopName"
              placeholder="请输入超市名称"
              clearable
              @keyup.enter.native="handleQuery"
            />
          </el-form-item>
          <el-form-item label="仓库名称" prop="warehouseId">
            <el-input
              v-model="queryParams.warehouseName"
              placeholder="请输入仓库名称"
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
          <el-table-column label="仓库id" align="center" prop="warehouseId" />
          <el-table-column label="仓库名称" align="center" prop="warehouseName" />
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
            <el-form-item label="仓库id" prop="warehouseId">
              <el-input v-model="form.warehouseId" placeholder="请输入仓库id" />
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
    </transition>
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

export default {
  name: "Distributeresult",
  data() {
    return {
      active: 0,
      next_able: false,
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
    this.fetchSummaryData();
  },
  methods: {
    submitDis(){
      this.$confirm('是否确认提交调整？').then(() => {
        subCgDistributeRes(this.distributeresultData).then(async response => {
          this.$modal.msgSuccess('提交成功')

          console.log(response.data);
        }).catch(() => {
        })
        this.next_able = false;
      }).catch(() => {
      })

    },
     chgCalAllocation() {
      this.$confirm('是否确认提交调整？').then(() => {
        subCgCalAllocation(this.calAllocationData).then(async response => {
          this.$modal.msgSuccess('提交成功')
          this.distributeresultData = response.data;
          await this.handleTableData(this.distributeresultData, 1);
          // console.log(response.data);
        }).catch(() => {
        })
        this.next_able = false;
      }).catch(() => {
      })
    },
    handleTableData(tableData,fg){
      let rowSpanArr = [], position = 0;
      for (let [index, item] of tableData.entries()) {
        if (index === 0) {
          rowSpanArr.push(1);
          position = 0;
        } else {
          if (item.good_id === tableData[index - 1].good_id) {
            rowSpanArr[position] += 1; //项目名称相同，合并到同一个数组中
            rowSpanArr.push(0);
          } else {
            rowSpanArr.push(1);
            position = index;
          }
        }
      }
      if(fg===1) {
        this.rowSpanArr2 = rowSpanArr
      }else {
        this.rowSpanArr = rowSpanArr
      }
    },
    objectSpanMethod({ row, column, rowIndex, columnIndex }) {
      if (columnIndex === 3||columnIndex === 4) {
        const rowSpan = this.rowSpanArr[rowIndex];
        return {
          rowspan: rowSpan, //行
          colspan: 1 //列
        };
      }
    },
    objectSpanMethod2({ row, column, rowIndex, columnIndex }) {
      if (columnIndex === 1||columnIndex === 2) {
        const rowSpan = this.rowSpanArr2[rowIndex];
        return {
          rowspan: rowSpan, //行
          colspan: 1 //列
        };
      }
    },
    tableRowClassName({row, rowIndex}) {
      if (row.total_count>row.change_count) {
        return 'warning-row';
      }
      return 'success-row';
    },
    next() {
      if (this.active++ > 4) this.active = 0;
      if(this.active === 0) {
        this.fetchSummaryData()
      }else if(this.active === 1) {
        this.fetchInvSummaryData()
      }else if(this.active === 2) {
        this.next_able= true;
        this.fetchcalAllocationData()
      }else if(this.active === 3) {
        this.next_able= true;
      }else if(this.active === 4) {
        this.getList()
      }
    },
    prev() {
      if (this.active > 0) {
        this.active -= 1;
      }
      if(this.active === 0) {
        this.fetchSummaryData()
      }else if(this.active === 1) {
        this.next_able= false;
        this.fetchInvSummaryData()
      }else if(this.active === 2) {
        this.next_able= false;
        this.fetchcalAllocationData()
      }else if (this.active ===3){
        this.next_able= false;
      }else if(this.active === 4) {
        this.getList()
      }
    },
    /** 获取分配方案 */
    async fetchcalAllocationData() {
      this.loading = true;
      const response = await calAllocation();
      this.calAllocationData = response.data;
      await this.handleTableData(this.calAllocationData,0);
      this.loading = false;
    },
    /** 获取汇总数据 */
    async fetchSummaryData() {
      this.loading = true;
      const response = await getApSummary();
      this.summaryData = response.data;
      await this.handleTableData(this.summaryData,0);
      this.loading = false;
    },
    /** 获取库存汇总数据 */
    async fetchInvSummaryData() {
      this.loading = true;
      const response = await getInvSummary();
      this.InvsummaryData = response.data;
      await this.handleTableData(this.InvsummaryData,0);
      this.loading = false;
    },
    /** 查询分配调拨列表 */
    getList() {
      this.loading = true;
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
