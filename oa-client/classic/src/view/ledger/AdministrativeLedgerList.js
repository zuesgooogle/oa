Ext.define('oa.view.ledger.AdministrativeLedgerList', {
    extend: 'Ext.grid.Panel',
    xtype: 'administrativeLedgerList',

    id: 'administrativeLedgerList',
    alias: 'administrativeLedgerList',

    controller: 'administrativeLedger',

    title: '行政性收费台账',
    scrollable: true,
    closable: true,

    tbar: {
        items: [{
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addAdministrativeLedger'
        },
        {
            xtype: 'button',
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewAdministrativeLedger'
        },
        {
            xtype: 'button',
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteAdministrativeLedger'
        }]
    },

    store: {
        type: 'administrativeLedger'
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: '片区', dataIndex: 'area', width: 100 },
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
        itemdblclick: 'viewAdministrativeLedger'
    }

});