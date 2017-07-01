Ext.define('oa.view.department.DepartmentController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.department',

    store: ['department'],

    init: function () {
    },

    addDepartment: function (sender) {
        var info = Ext.getCmp('departmentInfo');
        if (info == null) {
            info = Ext.create('departmentInfo');
        }
        info.show();
    },

    viewDepartment: function(sender) {
        var gird = sender.up('departmentList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('departmentInfo');
        if (info == null) {
            info = Ext.create('departmentInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteDepartment: function (sender) {
        var gird = sender.up('departmentList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除部门", "您确认要删除部门？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'department/delete',
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

    updateDepartment: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var departmentList = Ext.getCmp('departmentList');
                    var store = departmentList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    departmentList.getView().refresh();
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