Ext.define('oa.view.news.NewsViewList', {
    extend: 'Ext.grid.Panel',
    xtype: 'newsViewList',

    id: 'newsViewList',
    alias: 'newsViewList',

    controller: 'news',

    title: '新闻',
    scrollable: true,
    closable: false,

    store: {
        type: 'news'
    },

    columns: [
        { header: '序号', xtype: 'rownumberer', width: 60, align: 'center', sortable: false },
        { text: '封面图', dataIndex: 'mainImgUrl', width: 150,
            renderer: 'rendererMainImage'
        },
        { text: '新闻', dataIndex: 'title', flex: 1,
            renderer: function(value, cellmeta, record) {
                var tpl = '<h3>{0}</h3><p>发布时间：{1}</p><p>{2}</p>';
                return Ext.String.format(tpl, value, record.data.createTime, record.data.sumary);
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
        
    },

    listeners: {
        render: function (grid) {
            var store = grid.getStore();
            store.load();
        }
    }

});