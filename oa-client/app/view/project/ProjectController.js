Ext.define('oa.view.project.ProjectController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.project',
    requires: ['oa.config.Config'],

    store: ['project'],


    init: function () {
    },

    addProject: function (sender) {
        var info = Ext.getCmp('projectInfo');
        if (info == null) {
            info = Ext.create('projectInfo');
        }
        info.show();
    },

    viewProject: function(sender) {
        var gird = sender.up('projectList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('projectInfo');
        if (info == null) {
            info = Ext.create('projectInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteProject: function (sender) {
        var gird = sender.up('projectList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除项目", "您确认要删除项目？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'project/delete',
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

    updateProject: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var projectList = Ext.getCmp('projectList');
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
    }
});