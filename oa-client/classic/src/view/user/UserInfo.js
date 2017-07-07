Ext.define('oa.view.user.UserInfo', {
    extend: 'Ext.window.Window',
    xtype: 'userInfo',

    alias: 'userInfo',
    id: 'userInfo',

    controller: 'user',

    title: '用户信息',
    modal: false,
    resizable: false,

    width: 800,
    height: 500,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'user/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
            { fieldLabel: '用户名', name: 'username', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '手机号', name: 'mobile', xtype: 'textfield', allowBlank: false },
            { name: 'departmentids', xtype: 'departmentMultiSelect', allowBlank: false },
            { name: 'positionids', xtype: 'positionMultiSelect', allowBlank: false },
            { fieldLabel: '房间号', name: 'roomId', xtype: 'numberfield', allowBlank: false },

            { fieldLabel: '备注', name: 'remark', xtype: 'textfield' },
            {
                fieldLabel: 'CreateTime', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateUser'
        }, {
            text: 'Cancel',
            handler: function () {
                this.up("window").close();
            }
        }]
    }],

    initComponent: function () {
        this.callParent(arguments);
    }


});