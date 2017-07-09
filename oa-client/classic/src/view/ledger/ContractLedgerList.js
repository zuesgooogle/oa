Ext.define('oa.view.ledger.ContractLedgerList', {
    extend: 'Ext.grid.Panel',
    xtype: 'contractLedgerList',

    id: 'contractLedgerList',
    alias: 'contractLedgerList',

    controller: 'contractLedger',

    title: '合同台账',
    scrollable: true,
    closable: true,
    store: {
        type: 'contractLedger'
    },
    tbar: {
        items: [{
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addContractLedger'
        },
        {
            xtype: 'button',
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewContractLedger'
        },
        {
            xtype: 'button',
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteContractLedger'
        }]
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: '公司', dataIndex: 'company', width: 100 },
        { text: '合同名称', dataIndex: 'contractName', width: 100 },
        { text: '合同状态', dataIndex: 'contractState', width: 100 },
        { text: '合同金额', dataIndex: 'contractAmount', width: 100 },
        { text: '履约金额', dataIndex: 'performanceAmount', width: 100 },
        { text: '签约方', dataIndex: 'signatory', width: 100 },
        { text: '合同签订时间', dataIndex: 'signTime', width: 150, 
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(value, 'Y-m-d');
            }
        },
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
        itemdblclick: 'viewContractLedger'
    }

});