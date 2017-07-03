Ext.define('oa.view.plan.PlanAssertMonthList', {
    extend: 'Ext.grid.Panel',
    xtype: 'planAssertMonthList',

    id: 'planAssertMonthList',
    alias: 'planAssertMonthList',

    controller: 'planAssertMonth',

    title: '月度资产购置计划',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPlanAssertMonth'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPlanAssertMonth'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePlanAssertMonth'
        }],

    store: {
        type: 'planAssertMonth'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        {text: '资产类型', dataIndex: 'assertId', width: 100},
        {text: '资产名称', dataIndex: 'assertName', width: 100},
        {text: '年度计划购置数量', dataIndex: 'yearTotalNum', width: 150},
        {text: '已购置数量', dataIndex: 'boughtNum', width: 100},
        {text: '本月计划数量', dataIndex: 'planNum', width: 100},
        {text: '单价', dataIndex: 'unitPrice', width: 100},
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
        itemdblclick: 'viewPlanAssertMonth'
    }

});