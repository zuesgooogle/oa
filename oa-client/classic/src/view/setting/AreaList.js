Ext.define('oa.view.setting.areaList', {
    extend: 'Ext.grid.Panel',
    xtype: 'areaList',

    id: 'areaList',
    alias: 'areaList',

    controller: 'area',

    title: '片区管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addArea'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewArea'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteArea'
        }],

    store: {
        type: 'area'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '片区名称', dataIndex: 'name', width: 200 },
        {
            text: '创建时间', dataIndex: 'createTime', flex: 1,
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
        itemdblclick: 'viewArea'
    }

});