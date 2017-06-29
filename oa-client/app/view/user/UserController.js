Ext.define('oa.view.user.UserController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.user',

    stores: ['User'],

    addUser: function(sender) {
        var userInfo = Ext.getCmp('userInfo');
        if (userInfo == null) {
            userInfo = Ext.create('userInfo');
        }

        userInfo.show();
    },

    viewUser: function(sender) {

    }
});