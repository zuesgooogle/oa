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
        }],

    store: {
        type: 'user'
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: 'Username', dataIndex: 'username', width: 200 },
        {
            text: 'CreateTime', dataIndex: 'createTime', flex: 1,
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
        itemdblclick: 'viewUser'
    }

});