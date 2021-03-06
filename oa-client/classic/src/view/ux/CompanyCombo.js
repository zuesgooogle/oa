Ext.define('oa.ux.CompanyCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.companyCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data: Utils.company
    }),

    fieldLabel: '所属公司',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
});