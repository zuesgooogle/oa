Ext.define('oa.view.supplement.SupplementManageController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.supplementManage',

    init: function () {
    },

    addSupplementManage: function (sender) {
        var info = Ext.getCmp('supplementManageInfo');
        if (info == null) {
            info = Ext.create('supplementManageInfo');
        }
        info.show();
    },

    viewSupplementManage: function(sender) {
        var gird = sender.up('supplementManageList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('supplementManageInfo');
        if (info == null) {
            info = Ext.create('supplementManageInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteSupplementManage: function (sender) {
        var gird = sender.up('supplementManageList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除计划", "您确认要删除？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + '/supplement/manage/delete',
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

    updateSupplementManage: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var planList = Ext.getCmp('supplementManageList');
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