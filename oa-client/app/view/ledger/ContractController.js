Ext.define('oa.view.ledger.contractLedgerController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.contractLedger',

    addContractLedger: function (sender) {
        var info = Ext.getCmp('contractLedgerInfo');
        if (info == null) {
            info = Ext.create('contractLedgerInfo');
        }
        info.show();
    },

    viewContractLedger: function (sender) {
        var gird = sender.up('contractLedgerList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('contractLedgerInfo');
        if (info == null) {
            info = Ext.create('contractLedgerInfo');
        }

        info.down('form').loadRecord(record);
        info.show();
    },

    updateContractLedger: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var contractLedgerList = Ext.getCmp('contractLedgerList');
                    var store = contractLedgerList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    contractLedgerList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            });
        }
    },

    deleteContractLedger: function (sender) {
        var gird = sender.up('contractLedgerList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除台账", "您确认要删除台账吗？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'ledger/contract/delete',
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
    viewReport: function() {
        var workspace = Ext.getCmp('workspace');
            report = Ext.getCmp('contractLedgerReport');

            if (report == null) {
                report = Ext.create('contractLedgerReport');
                workspace.add(report);
            }
            workspace.setActiveTab(report);
    },

    doReport: function(sender) {
        var grid = sender.up('grid');
            year = grid.down('#year').getValue();

            store = grid.getStore();
            proxy = store.getProxy();

            now = Ext.Date.format(new Date(), 'Y');
            proxy.url = oa.config.Config.BASE_URL + 'ledger/zhidi/cost/report';
            proxy.extraParams = { year: year };

            store.load();
    }

});