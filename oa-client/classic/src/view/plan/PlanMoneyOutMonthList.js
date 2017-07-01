Ext.define('oa.view.plan.PlanMoneyOutMonthList', {
    extend: 'Ext.grid.Panel',
    xtype: 'planMoneyOutMonthList',

    id: 'planMoneyOutMonthList',
    alias: 'planMoneyOutMonthList',

    controller: 'planMoneyOutMonth',

    title: '月度资金计划',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPlanMoneyOutMonth'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPlanMoneyOutMonth'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePlanMoneyOutMonth'
        }],

    store: {
        type: 'planMoneyOutMonth'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        {
            text: '所属公司', dataIndex: 'company', width: 200,
            renderer: function (value, cellmeta, record) {
                return Utils.rendererCompany(value);
            }
        },
        {text: '部门', dataIndex: 'departmentId', width: 100},
        {text: '项目', dataIndex: 'projectId', width: 100},
        {text: '成本科目', dataIndex: 'subjectId', width: 100},
        {text: '收款单位', dataIndex: 'receiver', width: 100},
        {text: '合同名称', dataIndex: 'contractName', width: 100},
        {text: '合同金额', dataIndex: 'contractAmount', width: 100},
        {
            text: '创建时间', dataIndex: 'createTime', flex: 1,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        }
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
        itemdblclick: 'viewPlanMoneyOutMonth'
    }

});