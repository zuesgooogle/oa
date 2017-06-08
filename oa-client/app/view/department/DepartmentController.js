Ext.define('oa.view.department.DepartmentController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.department',
    
    getDepartmentList: function() {
        console.log('get department list...');
        Ext.getCmp('departmentList').store().reload();
    }
});