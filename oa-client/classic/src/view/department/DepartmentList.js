Ext.define('oa.view.department.DepartmentList', {
    extend: 'Ext.grid.Panel',
    xtype: 'departmentList',

    id: 'departmentList',
    alias: 'departmentList',
    reference: 'departmentList',

    requires: [
        'oa.store.Department'
    ],

    controller: 'department',
    viewModel: 'department',

    title: '部门管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'icon-add',
            handler: 'addDepartment'
        }],

    store: {
        type: 'department'
    },

    columns: [
        { text: 'Id', dataIndex: 'id', width: 100 },
        { text: 'Name', dataIndex: 'name', width: 200 },
        { text: 'CreateTime', dataIndex: 'createTime', flex: 1,
            renderer: function(value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        }
    ],

    initComponent: function () {
        this.callParent(arguments);
    },

    listeners: {
        render: function (grid) {
            var store = grid.getStore();
            store.load();
        },
        itemdblclick: 'viewDepartment'
    }

});