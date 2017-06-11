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

    items: [{
        xtype: 'form',
        bodyStyle:"padding:10px 10px 10px 10px",  
        defaults: {
            anchor: '100%',
        },
        items: [
            {fieldLabel: 'Id', id: 'id', xtype: 'textfield', editable: false},
            {fieldLabel: 'Name', id: 'name', xtype: 'textfield'},
            {fieldLabel: 'CreateTime', id: 'createTime', xtype: 'datefield', editable: false, value: new Date(), format: 'Y-m-d H:i:s'},
        ]
    }],

    buttons: [{
        text: 'Submit'
    }, {
        text: 'Cancel',
        handler: function() {
            this.up("window").close(); 
        }
    }],

    initComponent: function () {
        this.callParent(arguments);
    }


});