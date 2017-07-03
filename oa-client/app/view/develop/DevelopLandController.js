Ext.define('oa.view.develop.DevelopLandController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.developLand',

    store: ['developLand'],

    init: function () {
    },

    addDevelopLand: function (sender) {
        var info = Ext.getCmp('developLandInfo');
        if (info == null) {
            info = Ext.create('developLandInfo');
        }
        info.show();
    },

    viewDevelopLand: function(sender) {
        var gird = sender.up('developLandList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('developLandInfo');
        if (info == null) {
            info = Ext.create('developLandInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteDevelopLand: function (sender) {
        var gird = sender.up('developLandList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除进度", "您确认要删除进度？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'develop/land/delete',
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

    updateDevelopLand: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var developLandList = Ext.getCmp('developLandList');
                    var store = developLandList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    developLandList.getView().refresh();
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