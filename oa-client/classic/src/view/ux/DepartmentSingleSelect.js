Ext.define('oa.ux.DepartmentSingleSelect', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.departmentSingleSelect',

    store: {
        type: 'department'
    },

    fieldLabel: '选择部门',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id',
});