Ext.define('oa.ux.MonthCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.monthCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data: DateUtils.month
    }),

    fieldLabel: '月份',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
});