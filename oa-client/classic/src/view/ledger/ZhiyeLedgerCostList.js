Ext.define('oa.view.ledger.ZhiyeLedgerCostList', {
    extend: 'Ext.grid.Panel',
    xtype: 'zhiyeLedgerCostList',

    id: 'zhiyeLedgerCostList',
    alias: 'zhiyeLedgerCostList',

    requires: [
        'oa.store.ZhiyeLedgerCost'
    ],

    controller: 'zhiyeLedgerCost',

    title: '成本台账（置业）',
    scrollable: true,
    closable: true,

    tbar: {
        items: [{
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addZhiyeLedgerCost'
        },
        {
            xtype: 'button',
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-eyet',
            disabled: true,
            handler: 'viewZhiyeLedgerCost'
        },
        {
            xtype: 'button',
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteZhiyeLedgerCost'
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
        type: 'zhiyeLedgerCost'
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: '年', dataIndex: 'year', width: 50 },
        { text: '月', dataIndex: 'month', width: 50 },
        { text: '地块', dataIndex: 'landId', width: 100 },
        { text: '成本科目', dataIndex: 'subjectId', width: 100 },
        { text: '预计投资额', dataIndex: 'expectInvest', width: 100 },
        { text: '已签合同金额', dataIndex: 'contractAmount', width: 100 },
        { text: '已履约金额', dataIndex: 'performanceAmount', width: 150 },
        { text: '已付金额', dataIndex: 'paidAmount', width: 100 },
        { text: '已结束金额', dataIndex: 'settledAccount', width: 100 },
        {
            text: '时间', dataIndex: 'createTime', width: 200 ,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        },
        { flex: 1 }
    ],
    bbar: {
        xtype: 'pagingtoolbar',
        yesplayInfo: true
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
        itemdblclick: 'viewZhiyeLedgerCost'
    }

});