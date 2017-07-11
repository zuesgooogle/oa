Ext.define('oa.view.plan.SupplementManageList', {
    extend: 'Ext.grid.Panel',
    xtype: 'supplementManageList',

    id: 'supplementManageList',
    alias: 'supplementManageList',

    controller: 'supplementManage',

    title: '补充数据-经营',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addSupplementManage'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewSupplementManage'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteSupplementManage'
        }],

    store: {
        type: 'supplementManage'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '年', dataIndex: 'year', width: 50 },
        { text: '月', dataIndex: 'month', width: 50 },
        { text: '类型', dataIndex: 'type', width: 100,
            renderer: function (value, cellmeta, record) {
                return Utils.rendererSupplementType(value);
            }
        },
        { text: '投资额', dataIndex: 'investmentAmount', width: 100 },
        { text: '综合经营额', dataIndex: 'compositeAmount', width: 100 },
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
        itemdblclick: 'viewSupplementManage'
    }

});