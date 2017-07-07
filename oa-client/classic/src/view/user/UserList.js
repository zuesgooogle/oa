Ext.define('oa.view.user.UserList', {
    extend: 'Ext.grid.Panel',
    xtype: 'userList',

    id: 'userList',
    alias: 'userList',
    reference: 'userList',

    requires: [
        'oa.store.User'
    ],

    controller: 'user',

    title: '用户管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addUser'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewUser'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteUser'
        }],

    store: {
        type: 'user'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '用户名', dataIndex: 'username', width: 100 },
        { text: '手机号', dataIndex: 'mobile', width: 100 },
        { text: '房间号', dataIndex: 'roomId', width: 100 },
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
        itemdblclick: 'viewUser'
    }

});