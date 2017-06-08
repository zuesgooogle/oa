Ext.define('oa.view.department.DeparmentInfo', {
    extend: 'Ext.window.Window',
    xtype: 'deparmentInfo',

    alias: 'departmentInfo',
    id: 'departmentInfo',

    title: '部门信息',
    modal: false,
    resizable: false,

    width: 400,
    height: 300,

    closeAction: 'destroy',

    initComponent: function () {
        this.callParent(arguments);
    }


});