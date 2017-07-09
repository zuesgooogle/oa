Ext.define('oa.view.news.NewsView', {
    extend: 'Ext.view.View',
    xtype: 'newsView',
    
    id: 'newsView',
    alias: 'newsView',

    title: '新闻/公告',
		
    store: {
        type: 'news'
    },

    itemCls: 'x-dataview-item',
    singleSelect: true,
    overItemCls: 'x-view-over',
    itemSelector: 'div.thumb-wrap',
    tpl: [
        // '<div class="details">',
            '<tpl for=".">',
                '<div class="thumb-wrap" style="float: left;margin: 4px;margin-right: 0;padding: 5px;">',
                    '<input type="hidden" id="{id}" value="${id}">' +
                    '<div class="thumb" style="width: 100px"><p>{title}</p></div>', +
                    '<div class="thumb" style="padding: 3px;">',
                        '<img src="{mainImgUrl}" style="height: 100px; width: 100px; display: block;"/>',
                    '</div>',
                    '<span>{createTime}</span>',
                '</div>',
            '</tpl>'
        // '</div>'
    ],
    
    initComponent: function() {
        this.callParent(arguments);
    },
    
    listeners: {
        // itemdblclick: 'onFolderOpen',
        // select: 'onFolderSelect'
    }
});
