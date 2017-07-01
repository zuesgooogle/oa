Ext.define('oa.ux.CompanyCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.companyCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data : [
            {"id": 1, "name":"置地公司"},
            {"id": 2, "name":"置业公司"}
        ]
    }),

    fieldLabel: '所属公司',
    queryMode: 'local',
    displayField: 'name',
    valueField: 'id',
});