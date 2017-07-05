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

    listeners: {
        beforerender: function() {
            var now = Ext.Date.format(new Date(), 'Y');
            var years = [];

            for (var i = now; i > 1900; i--) {
                years.push([i, i]);
            }
            this.store.loadData(years);

            this.setValue(now);
        }
    }
});