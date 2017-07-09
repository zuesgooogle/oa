Ext.define('oa.view.provider.ProviderDirectoryList', {
    extend: 'Ext.grid.Panel',
    xtype: 'providerDirectoryList',

    id: 'providerDirectoryList',
    alias: 'providerDirectoryList',

    controller: 'providerDirectory',

    title: '合格供方名录',
    scrollable: true,
    closable: true,
    plugins: 'gridfilters',

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addProviderDirectory'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewProviderDirectory'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteProviderDirectory'
        }],

    store: {
        type: 'providerDirectory'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '供方名称', dataIndex: 'name', width: 100 },
        { text: '供方品类', dataIndex: 'type', width: 100 },
        { text: '联系人', dataIndex: 'linkman', width: 100,
            filter: {
                type: 'string'
            }
        },
        { text: '联系电话', dataIndex: 'phone', width: 100 },
        { text: '地址', dataIndex: 'address', width: 100 },
        { text: '邮编', dataIndex: 'postcode', width: 100 },
        { text: '考察评审表', dataIndex: 'assessTable', width: 200 },
        { text: '能力评审表', dataIndex: 'abilityTable', width: 200 },
        { text: '供方评价表', dataIndex: 'provideTable', width: 200 },
        {
            text: '创建时间', dataIndex: 'createTime', width: 150 ,
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
        itemdblclick: 'viewProviderDirectory'
    }

});