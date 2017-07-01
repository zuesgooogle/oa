Ext.define('oa.view.ledger.ZhidiLedgerCostController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.zhidiLedgerCost',

    stores: ['zhidiLedgerCost'],

    addZhidiLedgerCost: function (sender) {
        var info = Ext.getCmp('zhidiLedgerCostInfo');
        if (info == null) {
            info = Ext.create('zhidiLedgerCostInfo');
        }
        info.show();
    },

    viewZhidiLedgerCost: function (sender) {
        var gird = sender.up('zhidiLedgerCostList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('zhidiLedgerCostInfo');
        if (info == null) {
            info = Ext.create('zhidiLedgerCostInfo');
        }

        info.down('form').loadRecord(record);
        info.show();
    },

    updateZhidiLedgerCost: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var zhidiLedgerCostList = Ext.getCmp('zhidiLedgerCostList');
                    var store = zhidiLedgerCostList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    zhidiLedgerCostList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            });
        }
    },

    deleteZhidiLedgerCost: function (sender) {
        var gird = sender.up('zhidiLedgerCostList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除台账", "您确认要删除台账吗？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'zhidi/ledger/cost/delete',
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