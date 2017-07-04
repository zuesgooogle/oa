Ext.define('oa.view.financingLedger.financingLedgerController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.financingLedger',

    store: ['financingLedger'],

    init: function () {
    },

    addFinancingLedger: function (sender) {
        var info = Ext.getCmp('financingLedgerInfo');
        if (info == null) {
            info = Ext.create('financingLedgerInfo');
        }
        info.show();
    },

    viewFinancingLedger: function(sender) {
        var gird = sender.up('financingLedgerList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('financingLedgerInfo');
        if (info == null) {
            info = Ext.create('financingLedgerInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteFinancingLedger: function (sender) {
        var gird = sender.up('financingLedgerList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除进度", "您确认要删除吗？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'financing/ledger/delete',
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

    updateFinancingLedger: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var financingLedgerList = Ext.getCmp('financingLedgerList');
                    var store = financingLedgerList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    financingLedgerList.getView().refresh();
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