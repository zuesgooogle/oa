/**
 * The main application class. An instance of this class is created by app.js when it
 * calls Ext.application(). This is the ideal place to handle application launch and
 * initialization details.
 */
Ext.define('oa.Application', {
    extend: 'Ext.app.Application',
    
    name: 'oa',
    
    requires: [
        'oa.config.Config'
    ],

    stores: [
        // TODO: add global / shared stores here
    ],
    
    launch: function () {
        var loggedIn;

        // Check to see the current value of the localStorage key
        loggedIn = localStorage.getItem("oaLoggedIn");

        // This ternary operator determines the value of the TutorialLoggedIn key.
        // If TutorialLoggedIn isn't true, we display the login window,
        // otherwise, we display the main view
        Ext.create({
            xtype: loggedIn ? 'app-main' : 'login'
        });
    },

    onAppUpdate: function () {
        Ext.Msg.confirm('Application Update', 'This application has an update, reload?',
            function (choice) {
                if (choice === 'yes') {
                    window.location.reload();
                }
            }
        );
    }
});
