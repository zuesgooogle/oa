Ext.define('oa.view.audit.ApprovalAuditController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.approvalAudit',

    init: function () {
    },


    selectAudit: function (view, record, item, index, e) {
        var action =  record.data.action;

        var workspace = Ext.getCmp('workspace');
        var cmp = Ext.getCmp(action);
        if (cmp == null) {
            cmp = Ext.create(action);
            workspace.add(cmp);
        }
        workspace.setActiveTab(cmp);
    }

});