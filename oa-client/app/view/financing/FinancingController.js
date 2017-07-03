Ext.define('oa.view.develop.FinancingController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.financing',

    store: ['financing'],

    init: function () {
    },

    addFinancing: function (sender) {
        var info = Ext.getCmp('financingInfo');
        if (info == null) {
            info = Ext.create('financingInfo');
        }
        info.show();
    },

    viewFinancing: function(sender) {
        var gird = sender.up('financingList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('financingInfo');
        if (info == null) {
            info = Ext.create('financingInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteFinancing: function (sender) {
        var gird = sender.up('financingList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除进度", "您确认要删除进度？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'financing/delete',
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

    updateFinancing: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var financingList = Ext.getCmp('financingList');
                    var store = financingList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    financingList.getView().refresh();
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