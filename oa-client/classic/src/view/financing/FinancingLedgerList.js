Ext.define('oa.view.develop.financingLedgerList', {
    extend: 'Ext.grid.Panel',
    xtype: 'financingLedgerList',

    id: 'financingLedgerList',
    alias: 'financingLedgerList',
    controller: 'financingLedger',

    title: '融资进度管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addFinancingLedger'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewFinancingLedger'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteFinancingLedger'
        }],

    store: {
        type: 'financingLedger'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '类别', dataIndex: 'type', width: 100 },
        { text: '年', dataIndex: 'year', width: 50 },
        { text: '月', dataIndex: 'month', width: 50 },
        { text: '银行', dataIndex: 'bankId', width: 100,},
        { text: '项目', dataIndex: 'projectName', width: 100 },
        { text: '额度', dataIndex: 'amount', width: 100 },
        { text: '计划融资金额', dataIndex: 'financingAmount', width: 120 },
        { text: '累计已放款金额', dataIndex: 'totalLending', width: 120 },
        { text: '累计已还款金额', dataIndex: 'totalReplayLoan', width: 120 },
        { text: '贷款余额', dataIndex: 'remainLoan', width: 100 },
        { text: '期限', dataIndex: 'deadline', width: 100 },
        { text: '利率', dataIndex: 'rate', width: 100 },
        { text: '担保方式', dataIndex: 'guaranty', width: 100 },
        {
            text: '创建时间', dataIndex: 'createTime', width: 200,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        }, {
            flex: 1
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
        itemdblclick: 'viewFinancingLedger'
    }

});