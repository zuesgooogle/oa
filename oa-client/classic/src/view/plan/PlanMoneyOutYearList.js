Ext.define('oa.view.plan.PlanMoneyOutYearList', {
    extend: 'Ext.grid.Panel',
    xtype: 'planMoneyOutYearList',

    id: 'planMoneyOutYearList',
    alias: 'planMoneyOutYearList',

    controller: 'planMoneyOutYear',

    title: '年度资金计划',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPlanMoneyOutYear'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPlanMoneyOutYear'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePlanMoneyOutYear'
        }],

    store: {
        type: 'planMoneyOutYear'
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
        {text: '合同名称', dataIndex: 'contractName', width: 100},
        {text: '合同金额', dataIndex: 'contractAmount', width: 100},
        {text: '已支付金额', dataIndex: 'paidAmount', width: 100},
        
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
        itemdblclick: 'viewPlanMoneyOutYear'
    }

});