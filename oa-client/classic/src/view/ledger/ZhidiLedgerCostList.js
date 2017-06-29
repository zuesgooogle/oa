Ext.define('oa.view.user.ZhidiLedgerCostList', {
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

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addZhidiLedgerCost'
        }],

    store: {
        type: 'zhidiLedgerCost'
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: '序号', dataIndex: 'serialNumber', width: 100 },
        { text: '成本科目', dataIndex: 'subjectId', width: 100 },
        { text: '可研测算金额', dataIndex: 'calculateInvest', width: 100 },
        { text: '预计投资额', dataIndex: 'expectInvest', width: 100 },
        { text: '累计投入', dataIndex: 'totalInvest', width: 100 },
        {
            text: '时间', dataIndex: 'createTime', flex: 1,
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
    },

    listeners: {
        render: function (grid) {
            var store = grid.getStore();
            store.load();
        },
        itemdblclick: 'viewZhidiLedgerCost'
    }

});