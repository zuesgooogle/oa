Ext.define('oa.view.department.DepartmentController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.department',
    
    addDepartment: function() {
        var info = Ext.getCmp('departmentInfo');
        if (info == null) {
            info = Ext.create('departmentInfo');
        }
        info.show();
    },

    viewDepartment: function(sender, record) {
        var info = Ext.getCmp('departmentInfo');
        if (info == null) {
            info = Ext.create('departmentInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    updateDepartment: function(sender) {
        var form = sender.up('form');
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    Ext.Msg.alert('Success', action.result);
                },
                failure: function(form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            });
        }

    }
});