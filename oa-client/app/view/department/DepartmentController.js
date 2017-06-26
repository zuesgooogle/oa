Ext.define('oa.view.department.DepartmentController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.department',

    store: ['department'],

    init: function () {

    },

    addDepartment: function (sender) {
        var tree = sender.up('treepanel');
        var parentNode = tree.getSelectionModel().getSelection()[0];

        Ext.Msg.prompt('部门名称', '请输入部门名称: \n', function (btn, text) {
            if (btn == 'ok') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'department/add',
                    method: 'POST',
                    params: {
                        parentId: parentNode.data.id,
                        name: text
                    },
                    timeout: 60000,
                    success: function (response, opts) {
                        tree.store.load();
                    },

                    failure: function (response, opts) {
                        console.log('server-side failure with status code ' + response.status);
                    }
                });
            }
        });
    },

    deleteDepartment: function (sender) {
        var tree = sender.up('treepanel');
        var record = tree.getSelectionModel().getSelection()[0];

        if (record == null) {
            Ext.Msg.alert('错误信息', '请选择需要删除的部门！');
            return;
        }

        if (record.data.id == 1) {
            Ext.Msg.alert('错误信息', '根目录不能删除！');
            return;
        }

        Ext.MessageBox.confirm("删除部门", "您确认要删除部门？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'department/delete',
                    method: 'POST',
                    params: {
                        id: record.data.id
                    },
                    timeout: 60000,
                    success: function (response, opts) {
                        tree.store.load();
                    },

                    failure: function (response, opts) {
                        Ext.Msg.alert('Failed', action.result.msg);
                    }
                });
            }
        });
    },

    viewDepartment: function (sender, record) {
        var info = Ext.getCmp('departmentInfo');
        if (info == null) {
            info = Ext.create('departmentInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    updateDepartment: function (sender) {
        var form = sender.up('form');
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var deparmentList = Ext.getCmp('departmentList');
                    var store = deparmentList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    deparmentList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            });
        }

    }
});