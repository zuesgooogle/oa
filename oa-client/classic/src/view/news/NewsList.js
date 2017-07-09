Ext.define('oa.view.news.NewsList', {
    extend: 'Ext.grid.Panel',
    xtype: 'newsList',

    id: 'newsList',
    alias: 'newsList',

    controller: 'news',

    title: '新闻管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addNews'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewNews'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteNews'
        }],

    store: {
        type: 'news'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '封面图', dataIndex: 'mainImgUrl', width: 200,
            renderer: 'rendererMainImage'
        },
        { text: '新闻标题', dataIndex: 'title', flex: 1},
        {
            text: '发布时间', dataIndex: 'createTime', width: 200, 
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
        itemdblclick: 'viewNews'
    }

});