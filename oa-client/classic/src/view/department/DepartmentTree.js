Ext.define('oa.view.department.DepartmentTree', {
    extend: 'Ext.tree.Panel',
    xtype: 'departmentTree',

    id: 'departmentTree',
    alias: 'departmentTree',

    controller: 'department',

    title: '部门管理',
    closable: true,

    rootVisible: true,
    store: {
        type: 'department',
        proxy: {
            type: 'ajax',
            url: oa.config.Config.BASE_URL + 'department/list'
        }
    },
    tbar: [{
        id: 'addDeptBtn', text: "增加", disabled: true, handler: 'addDepartment'
    }, "-", {
        id: 'deleteDeptBtn', text: "删除", disabled: true, handler: 'deleteDepartment'
    }, "-", {
        text: "刷新", handler: function () {
            this.up("treepanel").store.load();
        }
    }],
    listeners: {
        selectionchange: function (view, record) {
            Ext.getCmp('addDeptBtn').setDisabled(false);
            Ext.getCmp('deleteDeptBtn').setDisabled(false);
        },
        itemclick: function(view, record, index, e, eOpts) {
            var t = view.getSelectionModel().getSelection()[0];
        }
    }
});