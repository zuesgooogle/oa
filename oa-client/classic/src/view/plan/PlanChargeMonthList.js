Ext.define('oa.view.plan.PlanChargeMonthList', {
    extend: 'Ext.grid.Panel',
    xtype: 'planChargeMonthList',

    id: 'planChargeMonthList',
    alias: 'planChargeMonthList',

    controller: 'planChargeMonth',

    title: '月度费用计划',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPlanChargeMonth'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPlanChargeMonth'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePlanChargeMonth'
        }],

    store: {
        type: 'planChargeMonth'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '年份', dataIndex: 'year', width: 100 },
        {
            text: '所属公司', dataIndex: 'company', width: 200,
            renderer: function (value, cellmeta, record) {
                return Utils.rendererCompany(value);
            }
        },
        { text: '部门', dataIndex: 'departmentId', width: 100 },
        { text: '项目名称', dataIndex: 'projectId', width: 100 },
        { text: '成本科目', dataIndex: 'subjectId', width: 150 },
        { text: '费用名称', dataIndex: 'chargeName', width: 100 },
        { text: '年度计划金额', dataIndex: 'yearAmount', width: 100 },
        { text: '已支付金额', dataIndex: 'paiedAmount', width: 100 },
        { text: '本月计划金额', dataIndex: 'planAmount', width: 100 },
        { text: '本月实际支付', dataIndex: 'actualAmount', width: 100 },
        {
            text: '创建时间', dataIndex: 'createTime', width: 200,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        },
        { flex: 1 }
    ],
    bbar: {
        xtype: 'pagingtoolbar',
        displayInfo: true
    },

    initComponent: function () {
        this.callParent(arguments);

        this.getSelectionModel().on('selectionchange', this.onSelectChange, this);
    },

    onSelectChange: function (selModel, selections) {
        this.down('#update').setDisabled(selections.length === 0);
        this.down('#delete').setDisabled(selections.length === 0);
    },

    listeners: {
        render: function (grid) {
            var store = grid.getStore();
            store.load();
        },
        itemdblclick: 'viewPlanChargeMonth'
    }

});