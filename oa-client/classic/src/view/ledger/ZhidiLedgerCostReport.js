Ext.define('oa.view.ledger.ZhidiLedgerCostReport', {
    extend: 'Ext.grid.Panel',
    xtype: 'zhidiLedgerCostReport',

    id: 'zhidiLedgerCostReport',
    alias: 'zhidiLedgerCostReport',

    requires: [
        'oa.store.ZhidiLedgerCost'
    ],

    controller: 'zhidiLedgerCost',

    title: '成本台账汇总（置地）',
    scrollable: true,
    closable: true,

    tbar: {
        items: [{
            fieldLabel: '选择年份',
            xtype: 'yearCombo',
            name: 'year',
            iconCls: 'x-fa fa-plus',
            handler: 'addZhidiLedgerCost'
        },
        {
            xtype: 'button',
            itemId: 'report',
            text: '汇总',
            iconCls: 'x-fa fa-bar-chart',
            handler: 'viewZhidiLedgerCost'
        }]
    },

    store: {
        type: 'zhidiLedgerCost'
    },

    columns: [
        { header: '序号', xtype: 'rownumberer', width: 60, align: 'center', sortable: false },
        { text: '片区', dataIndex: 'areaId', width: 100 },
        { text: '成本科目', dataIndex: 'subjectId', width: 100 },
        { text: '可研测算金额', dataIndex: 'calculateInvest', width: 100 },
        { text: '预计投资额', dataIndex: 'expectInvest', width: 100 },
        { text: '累计投入', dataIndex: 'totalInvest', width: 100 },
        { text: '审计资料统计金额', dataIndex: 'auditStatistics', width: 150 },
        { text: '政府确认金额', dataIndex: 'govConfirm', width: 100 },
        { text: '政府程序金额', dataIndex: 'govCheck', width: 100 },
        { text: '未核对金额', dataIndex: 'uncheck', width: 100 },
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
            proxy.url = oa.config.Config.BASE_URL + 'ledger/zhidi/cost/report';
            proxy.extraParams = { year: now };

            store.load();
        }
    }

});