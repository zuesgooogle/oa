Ext.define('oa.view.department.DepartmentList', {
    extend: 'Ext.grid.Panel',
    xtype: 'departmentList',

    requires: [
        'oa.store.Department',
        'oa.view.main.MainModel'
    ],

    title: '部门管理',
    scrollable: true,
    closable: false,

    tbar : [
        {
           xtype : 'button',
           text : '新增',
           iconCls : 'icon-add'
        }],

    store: {
        type: 'department'
    },

    columns: [
        { text: 'Id',  dataIndex: 'id', width: 100 },
        { text: 'Name',  dataIndex: 'name', width: 100 },
        { text: 'CreateTime', dataIndex: 'createTime', flex: 1 }
    ],

    initComponent: function() {
        this.callParent(arguments);
    },

});