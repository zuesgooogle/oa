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
        { text: '名称', dataIndex: 'name', width: 100 },
        { text: '应支付金额', dataIndex: 'payableAmount', width: 100 },
        { text: '签约方', dataIndex: 'signatory', width: 100 },
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