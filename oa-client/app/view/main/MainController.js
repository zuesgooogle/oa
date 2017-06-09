/**
 * This class is the controller for the main view for the application. It is specified as
 * the "controller" of the Main view class.
 *
 * TODO - Replace this content of this view to suite the needs of your application.
 */
Ext.define('oa.view.main.MainController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.main',

    onMenuClick: function (sender, record) {
        var action =  record.data.action;

        this.getView();

        var workspace = Ext.getCmp('workspace');
        var cmp = Ext.getCmp(action);
        if (cmp == null) {
            cmp = Ext.create(action);
            workspace.add(cmp);
        }
        workspace.setActiveTab(cmp);
    },

    onConfirm: function (choice) {
        if (choice === 'yes') {
            //
        }
    }
});
