Ext.define('oa.ux.ProjectCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.projectCombo',

    store: {
        type: 'project'
    },

    fieldLabel: '项目',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
});