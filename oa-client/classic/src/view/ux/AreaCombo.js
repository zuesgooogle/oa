Ext.define('oa.ux.AreaCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.areaCombo',

    store: {
        type: 'area'
    },

    fieldLabel: '片区',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id',
})