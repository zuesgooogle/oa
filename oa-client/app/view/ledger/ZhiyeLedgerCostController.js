Ext.define('oa.view.ledger.ZhiyeLedgerCostController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.zhiyeLedgerCost',

    stores: ['zhiyeLedgerCost'],

    addZhiyeLedgerCost: function (sender) {
        var info = Ext.getCmp('zhiyeLedgerCostInfo');
        if (info == null) {
            info = Ext.create('zhiyeLedgerCostInfo');
        }
        info.show();
    },

    viewZhiyeLedgerCost: function (sender) {
        var gird = sender.up('zhiyeLedgerCostList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('zhiyeLedgerCostInfo');
        if (info == null) {
            info = Ext.create('zhiyeLedgerCostInfo');
        }

        info.down('form').loadRecord(record);
        info.show();
    },

    updateZhiyeLedgerCost: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var zhiyeLedgerCostList = Ext.getCmp('zhiyeLedgerCostList');
                    var store = zhiyeLedgerCostList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    zhiyeLedgerCostList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            });
        }
    },

    deleteZhiyeLedgerCost: function (sender) {
        var gird = sender.up('zhiyeLedgerCostList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除台账", "您确认要删除台账吗？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'zhiye/ledger/cost/delete',
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
            report = Ext.getCmp('zhiyeLedgerCostReport');

            if (report == null) {
                report = Ext.create('zhiyeLedgerCostReport');
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
            proxy.url = oa.config.Config.BASE_URL + 'ledger/zhiye/cost/report';
            proxy.extraParams = { year: year };

            store.load();
    }

});