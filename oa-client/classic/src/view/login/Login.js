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
            name: 'username',
            fieldLabel: 'Username',
            allowBlank: false
        }, {
            xtype: 'textfield',
            name: 'password',
            inputType: 'password',
            fieldLabel: 'Password',
            allowBlank: false
        }, {
            xtype: 'displayfield',
            hideEmptyLabel: false,
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