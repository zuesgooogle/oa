Ext.define('oa.view.plan.PlanChargeYearController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.planChargeYear',
    requires: ['oa.config.Config'],

    store: ['planChargeYear'],

    init: function () {
    },

    addPlanChargeYear: function (sender) {
        var info = Ext.getCmp('planChargeYearInfo');
        if (info == null) {
            info = Ext.create('planChargeYearInfo');
        }
        info.show();
    },

    viewPlanChargeYear: function(sender) {
        var gird = sender.up('planChargeYearList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('planChargeYearInfo');
        if (info == null) {
            info = Ext.create('planChargeYearInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deletePlanChargeYear: function (sender) {
        var gird = sender.up('planChargeYearList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除计划", "您确认要删除计划？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + '/plan/charge/year/delete',
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

    updatePlanChargeYear: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var planList = Ext.getCmp('planChargeYearList');
                    var store = planList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    planList.getView().refresh();
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