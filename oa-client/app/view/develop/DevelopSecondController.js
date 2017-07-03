Ext.define('oa.view.develop.DevelopSecondController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.developSecond',

    store: ['developSecond'],

    init: function () {
    },

    addDevelopSecond: function (sender) {
        var info = Ext.getCmp('developSecondInfo');
        if (info == null) {
            info = Ext.create('developSecondInfo');
        }
        info.show();
    },

    viewDevelopSecond: function(sender) {
        var gird = sender.up('developSecondList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('developSecondInfo');
        if (info == null) {
            info = Ext.create('developSecondInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteDevelopSecond: function (sender) {
        var gird = sender.up('developSecondList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除进度", "您确认要删除进度？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'develop/second/delete',
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

    updateDevelopSecond: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var DevelopSecondList = Ext.getCmp('developSecondList');
                    var store = DevelopSecondList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    DevelopSecondList.getView().refresh();
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