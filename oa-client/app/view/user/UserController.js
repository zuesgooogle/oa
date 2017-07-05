Ext.define('oa.view.user.UserController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.user',

    stores: ['User'],

    addUser: function(sender) {
        var userInfo = Ext.getCmp('userInfo');
        if (userInfo == null) {
            userInfo = Ext.create('userInfo');
        }

        userInfo.show();
    },

    viewUser: function(sender) {
        var gird = sender.up('userList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('userInfo');
        if (info == null) {
            info = Ext.create('userInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    updateUser: function(sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var projectList = Ext.getCmp('userList');
                    var store = projectList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    projectList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function(form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            })
        }
    },

    deleteUser: function (sender) {
        var gird = sender.up('userList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除用户", "您确认要删除用户？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'user/delete',
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