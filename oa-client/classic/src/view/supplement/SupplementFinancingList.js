Ext.define('oa.view.plan.SupplementFinancingList', {
    extend: 'Ext.grid.Panel',
    xtype: 'supplementFinancingList',

    id: 'supplementFinancingList',
    alias: 'supplementFinancingList',

    controller: 'supplementFinancing',

    title: '补充数据-财务',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addSupplementFinancing'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewSupplementFinancing'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteSupplementFinancing'
        }],

    store: {
        type: 'supplementFinancing'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '年', dataIndex: 'year', width: 50 },
        { text: '月', dataIndex: 'month', width: 50 },
        { text: '类型', dataIndex: 'type', width: 100 },

        { text: '资产', dataIndex: 'asserts', width: 100 },
        { text: '负债', dataIndex: 'debt', width: 100 },
        { text: '资产负债率', dataIndex: 'debtRatio', width: 100 },
        { text: '所有者权益', dataIndex: 'equity', width: 100 },
        { text: '净资产收益率', dataIndex: 'equityRatio', width: 100 },
        { text: '管理费', dataIndex: 'maintenance', width: 100 },
        { text: '利润', dataIndex: 'profit', width: 100 },
        { text: '营业收入', dataIndex: 'taking', width: 100 },
        { text: '金融机构借款本金', dataIndex: 'borrowAmount', width: 150 },
        { text: '其他支出', dataIndex: 'otherAmount', width: 100 },
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
        itemdblclick: 'viewSupplementFinancing'
    }

});