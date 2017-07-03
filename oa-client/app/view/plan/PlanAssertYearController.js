Ext.define('oa.view.plan.PlanAssertYearController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.planAssertYear',
    requires: ['oa.config.Config'],

    store: ['planAssertYear'],


    init: function () {
    },

    addPlanAssertYear: function (sender) {
        var info = Ext.getCmp('planAssertYearInfo');
        if (info == null) {
            info = Ext.create('planAssertYearInfo');
        }
        info.show();
    },

    viewPlanAssertYear: function(sender) {
        var gird = sender.up('planAssertYearList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('planAssertYearInfo');
        if (info == null) {
            info = Ext.create('planAssertYearInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deletePlanAssertYear: function (sender) {
        var gird = sender.up('planAssertYearList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除计划", "您确认要删除资产购置计划？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + '/plan/assert/year/delete',
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

    updatePlanAssertYear: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var planList = Ext.getCmp('planAssertYearList');
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