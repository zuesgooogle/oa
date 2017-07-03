Ext.define('oa.ux.PositionMultiSelect', {
    extend: 'Ext.form.field.Tag',
    xtype: 'positionMultiSelect',
    
    alias: 'widget.positionMultiSelect',

    store: {
        type: 'position'
    },

    fieldLabel: '选择职位',
    queryMode: 'local',
    filterPickList: true,
    displayField: 'name',
    valueField: 'id'
});