Ext.define('oa.view.news.NewsInfo', {
    extend: 'Ext.window.Window',
    xtype: 'newsInfo',

    alias: 'newsInfo',
    id: 'newsInfo',

    controller: 'news',

    title: '新闻信息',
    modal: false,
    resizable: false,

    width: 1024,
    height: 820,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'news/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'ID', name: 'id', xtype: 'textfield', hidden: true},
            { fieldLabel: '新闻标题', name: 'title', xtype: 'textfield', allowBlank: false },
            {
                xtype: 'filefield',
                emptyText: '请选择一张图片',
                fieldLabel: '封面图',
                name: 'mainImgUrl',
                buttonConfig: {
                    text : '',
                    iconCls: 'file-uploads-image-add'
                }
            },
            { fieldLabel: '新闻内容', name: 'content', xtype: 'htmleditor', minHeight: '560', allowBlank: false },
            {
                fieldLabel: '创建时间', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateNews'
        }, {
            text: 'Cancel',
            handler: function () {
                this.up("window").close();
            }
        }]
    }],

    initComponent: function () {
        this.callParent(arguments);
    }


});