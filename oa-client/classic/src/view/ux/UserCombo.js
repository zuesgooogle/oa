Ext.define('oa.ux.UserCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.userCombo',

    store: {
        type: 'user'
    },

    fieldLabel: '选择用户',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'username',
    valueField: 'id'
});