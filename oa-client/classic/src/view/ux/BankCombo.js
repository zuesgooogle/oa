Ext.define('oa.ux.BankCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.bankCombo',

    store: {
        type: 'bank'
    },

    fieldLabel: '银行',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id'
})