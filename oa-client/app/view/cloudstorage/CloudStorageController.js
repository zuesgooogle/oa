Ext.define('oa.view.cloudstorage.CloudStorageController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.cloudStorage',

    init: function () {
    },

    addCloudStorage: function (sender) {
        var info = Ext.getCmp('cloudStorageInfo');
        if (info == null) {
            info = Ext.create('cloudStorageInfo');
        }
        info.show();
    },

    viewCloudStorage: function(sender) {
        var gird = sender.up('cloudStorageList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('cloudStorageInfo');
        if (info == null) {
            info = Ext.create('cloudStorageInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteCloudStorage: function (sender) {
        var gird = sender.up('cloudStorageList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除文件", "您确认要删除？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'cloudstorage/delete',
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

    updateCloudStorage: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var cloudStorageList = Ext.getCmp('cloudStorageList');
                    var store = cloudStorageList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    cloudStorageList.getView().refresh();
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