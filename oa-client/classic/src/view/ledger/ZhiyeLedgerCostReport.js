Ext.define('oa.view.ledger.ZhiyeLedgerCostReport', {
    extend: 'Ext.grid.Panel',
    xtype: 'ZhiyeLedgerCostReport',

    id: 'zhiyeLedgerCostReport',
    alias: 'zhiyeLedgerCostReport',

    requires: [
        'oa.store.ZhiyeLedgerCost'
    ],

    controller: 'zhiyeLedgerCost',

    title: '成本台账汇总（置业）',
    scrollable: true,
    closable: true,

    tbar: {
        items: [{
            fieldLabel: '选择年份',
            xtype: 'yearCombo',
            itemId: 'year',
            name: 'year'
        },
        {
            xtype: 'button',
            itemId: 'report',
            text: '汇总',
            iconCls: 'x-fa fa-bar-chart',
            handler: 'doReport'
        }]
    },

    store: {
        type: 'zhiyeLedgerCost'
    },

    columns: [
        { header: '序号', xtype: 'rownumberer', width: 60, align: 'center', sortable: false },
        { text: '地块', dataIndex: 'landId', width: 100 },
        { text: '成本科目', dataIndex: 'subjectId', width: 100 },
        { text: '预计投资额', dataIndex: 'expectInvest', width: 100 },
        { text: '已签合同金额', dataIndex: 'contractAmount', width: 100 },
        { text: '已履约金额', dataIndex: 'performanceAmount', width: 150 },
        { text: '已付金额', dataIndex: 'paidAmount', width: 100 },
        { text: '已结束金额', dataIndex: 'settledAccount', width: 100 },
        { flex: 1 }
    ],
    bbar: {
        xtype: 'pagingtoolbar',
        displayInfo: true
    },

    initComponent: function () {
        this.callParent(arguments);
    },

    listeners: {
        render: function (grid) {
            var store = grid.getStore();
                proxy = store.getProxy();

            var now = Ext.Date.format(new Date(), 'Y');
            proxy.url = oa.config.Config.BASE_URL + 'ledger/zhiye/cost/report';
            proxy.extraParams = { year: now };

            store.load();
        }
    }

});