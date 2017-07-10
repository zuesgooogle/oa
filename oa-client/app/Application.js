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

    // http://fontawesome.io/icons/
    stores: [
        // TODO: add global / shared stores here
        'Area'
    ],
    
    launch: function () {
        var loggedIn;

        // Check to see the current value of the localStorage key
        loggedIn = localStorage.getItem("oaLoggedIn");

        if (loggedIn) {
            var main = Ext.create({
                        xtype: 'app-main'
                    });
                newsView = Ext.create('newsViewList');
                
                workspace = Ext.getCmp('workspace');
                workspace.add(newsView);
                workspace.setActiveTab(newsView);

        } else {
            Ext.create({
                xtype: 'login'
            });
        }

        
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
