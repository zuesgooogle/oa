Ext.define('oa.view.provider.ProviderDirectoryController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.providerDirectory',

    store: ['providerDirectory'],

    init: function () {
    },

    addProviderDirectory: function (sender) {
        var info = Ext.getCmp('providerDirectoryInfo');
        if (info == null) {
            info = Ext.create('providerDirectoryInfo');
        }
        info.show();
    },

    viewProviderDirectory: function(sender) {
        var gird = sender.up('providerDirectoryList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('providerDirectoryInfo');
        if (info == null) {
            info = Ext.create('providerDirectoryInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteProviderDirectory: function (sender) {
        var gird = sender.up('providerDirectoryList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除提示", "您确认要删除吗？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'provider/delete',
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

    updateProviderDirectory: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var ProviderDirectoryList = Ext.getCmp('providerDirectoryList');
                    var store = ProviderDirectoryList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    ProviderDirectoryList.getView().refresh();
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