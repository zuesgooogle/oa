Ext.define('oa.view.department.DepartmentModel', {
    extend: 'Ext.app.ViewModel',
    alias: 'viewmodel.department',
    stores: {

    },
    data: {
        
    },

    formulas: {
        selection: {
            bind: '{departmentList.selection}',
            get: function(selection) {
                return selection;
            }
        }
    }
});