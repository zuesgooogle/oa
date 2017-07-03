Ext.define('oa.ux.LandCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.landCombo',

    store: {
        type: 'land'
    },

    fieldLabel: '地块',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
})