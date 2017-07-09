Ext.define('oa.view.cloudstorage.CloudStorageList', {
    extend: 'Ext.grid.Panel',
    xtype: 'cloudStorageList',

    id: 'cloudStorageList',
    alias: 'cloudStorageList',

    controller: 'cloudStorage',

    title: '云盘管理',
    scrollable: true,
    closable: true,

    store: {
        type: 'cloudStorage'
    },

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addCloudStorage'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewCloudStorage'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteCloudStorage'
        }],

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '文件名', dataIndex: 'fileName', width: 200 },
        { text: '文件大小', dataIndex: 'size', width: 100, renderer: Utils.rendererNetworkSize },
        { text: '所属目录', dataIndex: 'directoryId', width: 200 },
        {
            text: '上传时间', dataIndex: 'createTime', width: 200,
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
        itemdblclick: 'viewCloudStorage'
    }

});