<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商店名称" prop="shopId">
        <el-input
          v-model="queryParams.shopname"
          placeholder="请输入商店名称"
          clearable
          @keyup.enter.native="handleQuery1"
        />
      </el-form-item>
      <el-form-item label="仓库名称" prop="warehouseId">
        <el-input
          v-model="queryParams.warehousename"
          placeholder="请输入仓库名称"
          clearable
          @keyup.enter.native="handleQuery2"
        />
      </el-form-item>
      <el-form-item label="距离" prop="distance">
        <el-input
          v-model="queryParams.distance"
          placeholder="请输入距离"
          clearable
          @keyup.enter.native="handleQuery3"
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
          v-hasPermi="['center:distance:add']"
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
          v-hasPermi="['center:distance:edit']"
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
          v-hasPermi="['center:distance:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['center:distance:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="distanceList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="主键" align="center" prop="id" />
      <el-table-column label="商店id" align="center" prop="shopId" />
      <el-table-column label="商店名称" align="center" prop="shopname" />
      <el-table-column label="仓库id" align="center" prop="warehouseId" />
      <el-table-column label="仓库名称" align="center" prop="warehousename" />
      <el-table-column label="距离" align="center" prop="distance" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['center:distance:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['center:distance:remove']"
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

    <!-- 添加或修改销储距离管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <!--////绑定容器值到下拉框 -->
        <el-form-item label="商店名称" prop="shopId">
          <el-select v-model="form.shopId" placeholder="请选择商店名称" @change="handleChange1">
            <el-option
              v-for="item in shopIdoptions"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>
        <!--////绑定容器值到下拉框 -->
        <el-form-item label="仓库名称" prop="warehouseId">
          <el-select v-model="form.warehouseId" placeholder="请选择商店名称" @change="handleChange2">
            <el-option
              v-for="item in warehousoptions"
              :key="item.value"
              :label="item.label"
              :value="item.value">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="距离" prop="distance">
          <el-input v-model="form.distance" placeholder="请输入距离" />
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
    import { listDistance, getDistance, delDistance, addDistance, updateDistance,listck,listsd } from "@/api/center/distance";

    export default {
        name: "Distance",
        data() {
            return {
                /////新增仓库列表容器////
                warehousoptions: [],
                /////新增上带你列表容器////
                shopIdoptions: [],
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
                // 销储距离管理表格数据
                distanceList: [],
                // 弹出层标题
                title: "",
                // 是否显示弹出层
                open: false,
                // 查询参数
                queryParams: {
                    pageNum: 1,
                    pageSize: 10,
                    shopId: null,
                    warehouseId: null,
                    distance: null,
                    shopname: null,
                    warehousename: null
                },
                // 表单参数
                form: {},
                // 表单校验
                rules: {
                    shopId: [
                        { required: true, message: "商店不能为空", trigger: "blur" }
                    ],
                    warehouseId: [
                        { required: true, message: "仓库不能为空", trigger: "blur" }
                    ],
                }
            };
        },
        created() {
            this.getList();
            /////访问页面调用后台接口访问获取仓库列表信息////
            this.getck();
            /////访问页面调用后台接口访问获取商店列表信息////
            this.getsd();
        },
        methods: {
            /** 查询销储距离管理列表 */
            getList() {
                this.loading = true;
                listDistance(this.queryParams).then(response => {
                    this.distanceList = response.rows;
                    this.total = response.total;
                    this.loading = false;
                });
            },
            /////获取仓库列表信息,并且将值赋值到容器当中去/////
            getck() {
                this.loading = true;
                listck().then(response => {
                    this.warehousoptions=response;
                });
            },
            /////获取商店列表信息,并且将值赋值到容器当中去/////
            getsd() {
                this.loading = true;
                listsd().then(response => {
                    this.shopIdoptions=response;
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
                    shopId: null,
                    warehouseId: null,
                    distance: null
                };
                this.resetForm("form");
            },
            /** 搜索按钮操作 */
            handleQuery() {
                this.queryParams.pageNum = 1;
                this.getList();
            },
            /** 搜索按钮操作 */
            handleQuery1(value) {
                this.queryParams.shopname = value;
            },
            /** 搜索按钮操作 */
            handleQuery2(value) {
                this.queryParams.warehousename = value;
            },
            /** 搜索按钮操作 */
            handleQuery3(value) {
                this.queryParams.distance = value;
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
            handleChange1(value){
                this.form.shopId=value;
                console.log('Selected value:', value);
            },
            handleChange2(value){
                this.form.warehouseId=value;
                console.log('Selected value:', value);
            },
            /** 新增按钮操作 */
            handleAdd() {
                this.reset();
                this.open = true;
                this.title = "添加销储距离管理";
            },
            /** 修改按钮操作 */
            handleUpdate(row) {
                this.reset();
                const id = row.id || this.ids
                getDistance(id).then(response => {
                    this.form = response.data;
                    this.open = true;
                    this.title = "修改销储距离管理";
                });
            },
            /** 提交按钮 */
            submitForm() {
                this.$refs["form"].validate(valid => {
                    if (valid) {
                        if (this.form.id != null) {
                            updateDistance(this.form).then(response => {
                                this.$modal.msgSuccess("修改成功");
                                this.open = false;
                                this.getList();
                            });
                        } else {
                            addDistance(this.form).then(response => {
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
                this.$modal.confirm('是否确认删除销储距离管理编号为"' + ids + '"的数据项？').then(function() {
                    return delDistance(ids);
                }).then(() => {
                    this.getList();
                    this.$modal.msgSuccess("删除成功");
                }).catch(() => {});
            },
            /** 导出按钮操作 */
            handleExport() {
                this.download('center/distance/export', {
                    ...this.queryParams
                }, `distance_${new Date().getTime()}.xlsx`)
            }
        }
    };
</script>
