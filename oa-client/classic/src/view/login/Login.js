Ext.define('oa.view.login.Login', {
    extend: 'Ext.window.Window',
    xtype: 'login',

    requires: [
        'oa.view.login.LoginController',
        'Ext.form.FormPanel'
    ],

    controller: 'login',
    bodyPadding: 10,
    title: '用户登录',
    closable: false,
    autoShow: true,
    width: 350,

    items: {
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'user/login',

        bodyStyle: "padding:10px 10px 10px 10px",

        reference: 'form',
        items: [{
            xtype: 'textfield',
            name: 'mobile',
            fieldLabel: '手机号码',
            allowBlank: false
        }, {
            xtype: 'textfield',
            name: 'password',
            inputType: 'password',
            fieldLabel: '账号密码',
            allowBlank: false
        }, {
            xtype: 'displayfield',
            hideEmptyLabel: false,
            itemId: 'errorMsg',
            value: 'Enter any non-blank password'
        }],
        buttons: [{
            text: 'Login',
            formBind: true,
            listeners: {
                click: 'onLoginClick'
            }
        }]
    }
});