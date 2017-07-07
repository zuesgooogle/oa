Ext.define('oa.view.login.LoginController', {
    extend: 'Ext.app.ViewController',
    alias: 'controller.login',

    onLoginClick: function(sender) {
        var that = this;

        var form = sender.up('form');
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    localStorage.setItem("oaLoggedIn", true);

                    // Remove Login Window
                    that.getView().destroy();

                    // Add the main view to the viewport
                    Ext.create({
                        xtype: 'app-main'
                    });
                },
                failure: function(form, action) {
                    var errorDisplay = form.owner.down('#errorMsg');
                        errorDisplay.setValue(action.result.msg);

                }
            });
        }
    }
});
