Ext.define('oa.ux.YearCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.yearCombo',

    store: new Ext.data.ArrayStore({
        fields: ['id', 'name'],
        data: []
    }),


    fieldLabel: '年份',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id',

    initComponent: function() {
        var year = Ext.Date.format(new Date(), 'Y');
            start = parseInt(year) + 5;
            end = parseInt(year) - 100;
            years = [];

        for (var i = start; i > end; i--) {
            years.push([i, i]);
        }
        this.store.loadData(years);

        this.callParent();
    },

    listeners: {
        beforerender: function() {
            if (this.getValue() == null) {
                var now = Ext.Date.format(new Date(), 'Y');
                this.setValue(now);
            }
        }
    }
});