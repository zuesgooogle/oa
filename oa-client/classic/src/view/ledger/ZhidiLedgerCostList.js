Ext.define('oa.view.ledger.ZhidiLedgerCostList', {
    extend: 'Ext.grid.Panel',
    xtype: 'zhidiLedgerCostList',

    id: 'zhidiLedgerCostList',
    alias: 'zhidiLedgerCostList',

    requires: [
        'oa.store.ZhidiLedgerCost'
    ],

    controller: 'zhidiLedgerCost',

    title: '成本台账（置地）',
    scrollable: true,
    closable: true,

    tbar: {
        items: [{
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addZhidiLedgerCost'
        },
        {
            xtype: 'button',
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewZhidiLedgerCost'
        },
        {
            xtype: 'button',
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteZhidiLedgerCost'
        },
        '->',
        {
            xtype: 'button',
            itemId: 'report',
            text: '查看汇总',
            iconCls: 'x-fa fa-bar-chart',
            handler: 'viewReport'
        }]
    },

    store: {
        type: 'zhidiLedgerCost'
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: '年', dataIndex: 'year', width: 50 },
        { text: '月', dataIndex: 'month', width: 50 },
        { text: '片区', dataIndex: 'areaId', width: 100 },
        { text: '成本科目', dataIndex: 'subjectId', width: 100 },
        { text: '可研测算金额', dataIndex: 'calculateInvest', width: 100 },
        { text: '预计投资额', dataIndex: 'expectInvest', width: 100 },
        { text: '累计投入', dataIndex: 'totalInvest', width: 100 },
        { text: '审计资料统计金额', dataIndex: 'auditStatistics', width: 150 },
        { text: '政府确认金额', dataIndex: 'govConfirm', width: 100 },
        { text: '政府程序金额', dataIndex: 'govCheck', width: 100 },
        { text: '未核对金额', dataIndex: 'uncheck', width: 100 },
        {
            text: '时间', dataIndex: 'createTime', width: 200,
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
        itemdblclick: 'viewZhidiLedgerCost'
    }

});