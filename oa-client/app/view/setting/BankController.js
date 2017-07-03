Ext.define('oa.view.setting.BankController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.bank',

    init: function () {
    },

    addBank: function (sender) {
        var info = Ext.getCmp('bankInfo');
        if (info == null) {
            info = Ext.create('bankInfo');
        }
        info.show();
    },

    viewBank: function (sender) {
        var gird = sender.up('bankList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('bankInfo');
        if (info == null) {
            info = Ext.create('bankInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteBank: function (sender) {
        var gird = sender.up('bankList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除提示", "您确认要删除银行？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'bank/delete',
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

    updateBank: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var bankList = Ext.getCmp('bankList');
                    var store = bankList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    bankList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            })
        }
    }
});