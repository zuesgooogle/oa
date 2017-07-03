Ext.define('oa.ux.PositionLevelCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.positionLevelCombo',

    store: Ext.create('Ext.data.Store', {
        fields: ['id', 'name'],
        data: [
            { "id": 1, "name": "领导班子" },
            { "id": 2, "name": "部门经理" },
            { "id": 3, "name": "员工" }
        ]
    }),

    fieldLabel: '职位等级',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id',
});