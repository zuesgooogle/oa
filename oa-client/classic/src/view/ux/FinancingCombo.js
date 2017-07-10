Ext.define('oa.ux.FinancingCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.financingCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data: Utils.financingType
    }),

    fieldLabel: '融资类别',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
});