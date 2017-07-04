Ext.define('oa.ux.PositionLevelCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.positionLevelCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data: Utils.positionLevel
    }),

    fieldLabel: '职位等级',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
});