Ext.define('oa.view.news.NewsController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.news',

    store: ['news'],

    tpl: '<div class="thumb-wrap>' +
            '<div class="thumb"><img height="80px" src="{0}"></div>' +
         '</div>',

    init: function () {
    },

    rendererMainImage: function (url) {
        return Ext.String.format(this.tpl, url);
    },

    addNews: function (sender) {
        var info = Ext.getCmp('newsInfo');
        if (info == null) {
            info = Ext.create('newsInfo');
        }
        info.show();
    },

    viewNews: function(sender) {
        var gird = sender.up('newsList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('newsInfo');
        if (info == null) {
            info = Ext.create('newsInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteNews: function (sender) {
        var gird = sender.up('newsList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除提示", "您确认要删除？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'news/delete',
                    method: 'POST',
                    params: {
                        id: record.data.id
                    },
                    success: function (response, opts) {
                        gird.store.remove(record);
                    },

                    failure: function (response, opts) {
                        Ext.Msg.alert('Failed', action.result.msg);
                    }
                });
            }
        });
    },

    updateNews: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var NewsList = Ext.getCmp('NewsList');
                    var store = NewsList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    NewsList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function(form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            })
        }
    }
});