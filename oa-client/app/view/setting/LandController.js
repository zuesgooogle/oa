Ext.define('oa.view.setting.LandController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.land',

    init: function () {
    },

    addLand: function (sender) {
        var info = Ext.getCmp('landInfo');
        if (info == null) {
            info = Ext.create('landInfo');
        }
        info.show();
    },

    viewLand: function(sender) {
        var gird = sender.up('landList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('landInfo');
        if (info == null) {
            info = Ext.create('landInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteLand: function (sender) {
        var gird = sender.up('landList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除提示", "您确认要删除地块？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'land/delete',
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

    updateLand: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var LandList = Ext.getCmp('landList');
                    var store = LandList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    LandList.getView().refresh();
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