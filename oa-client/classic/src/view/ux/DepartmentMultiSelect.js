Ext.define('oa.ux.DepartmentMultiSelect', {
    extend: 'Ext.form.field.Tag',
    xtype: 'departmentMultiSelect',
    
    alias: 'widget.departmentMultiSelect',

    store: {
        type: 'department'
    },

    fieldLabel: '部门',
    queryMode: 'local',
    filterPickList: true,
    displayField: 'name',
    valueField: 'id'
});