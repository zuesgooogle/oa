Ext.define('oa.view.workflow.WorkflowController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.workflow',

    stores: ['workflow'],

    startWorkflow: function(sender) {
        Ext.Ajax.request({
            url: oa.config.Config.BASE_URL + 'workflow/start',
            method: 'POST',
            params: {
                
            },
            success: function (response, opts) {
                Ext.getCmp('leaveForm').close();
            },

            failure: function (response, opts) {
                Ext.Msg.alert('Failed', action.result.msg);
            }
        });
    },

    addworkflow: function(sender) {
        var workflowInfo = Ext.getCmp('workflowInfo');
        if (workflowInfo == null) {
            workflowInfo = Ext.create('workflowInfo');
        }

        workflowInfo.show();
    },

    viewworkflow: function(sender) {
        var gird = sender.up('workflowList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('workflowInfo');
        if (info == null) {
            info = Ext.create('workflowInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    updateworkflow: function(sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var projectList = Ext.getCmp('workflowList');
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

    deleteworkflow: function (sender) {
        var gird = sender.up('workflowList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除用户", "您确认要删除用户？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'workflow/delete',
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
});