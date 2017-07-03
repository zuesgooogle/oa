Ext.define('oa.view.ledger.ApprovalAuditTree', {
    extend: 'Ext.tree.Panel',
    xtype: 'approvalAuditTree',

    id: 'approvalAuditTree',
    alias: 'approvalAuditTree',

    controller: 'approvalAudit',

    store: {
        type: 'approvalAudit'
    },

    title: '发起审批',
    scrollable: true,
    closable: true,
    rootVisible: false,

    initComponent: function () {
        this.callParent(arguments);
    },

    listeners: {
        itemdblclick: 'selectAudit'
    }

});