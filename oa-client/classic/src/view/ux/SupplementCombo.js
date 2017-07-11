Ext.define('oa.ux.SupplementCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.supplementCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data: Utils.supplementType
    }),

    fieldLabel: '类别',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
});