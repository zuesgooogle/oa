Ext.define('oa.view.department.DepartmentController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.department',
    
    addDepartment: function() {
        var info = Ext.getCmp('departmentInfo');
        if (info == null) {
            info = Ext.create('departmentInfo');
            console.log('new window');
        }
        info.show();
    }
});