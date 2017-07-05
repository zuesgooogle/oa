Ext.define('oa.view.ledger.administrativeLedgerController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.administrativeLedger',

    addAdministrativeLedger: function (sender) {
        var info = Ext.getCmp('administrativeLedgerInfo');
        if (info == null) {
            info = Ext.create('administrativeLedgerInfo');
        }
        info.show();
    },

    viewAdministrativeLedger: function (sender) {
        var gird = sender.up('administrativeLedgerList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('administrativeLedgerInfo');
        if (info == null) {
            info = Ext.create('administrativeLedgerInfo');
        }

        info.down('form').loadRecord(record);
        info.show();
    },

    updateAdministrativeLedger: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var administrativeLedgerList = Ext.getCmp('administrativeLedgerList');
                    var store = administrativeLedgerList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    administrativeLedgerList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            });
        }
    },

    deleteAdministrativeLedger: function (sender) {
        var gird = sender.up('administrativeLedgerList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除台账", "您确认要删除台账吗？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'ledger/administrative/delete',
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
    }

});