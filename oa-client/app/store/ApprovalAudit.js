Ext.define('oa.store.ApprovalAudit', {
    extend: 'Ext.data.TreeStore',

    alias: 'store.approvalAudit',

    root: {
        expanded: true,
        children: [
            {
                text: '置地流程', expanded: true, children: [
                    { text: '人事审批', iconCls: 'fa-user-plus', expanded: true, children: [
                        { text: '请假申请表', action: 'leaveForm', iconCls: 'fa-user', leaf: true }
                    ]},
                    { text: '财务审批', action: '', iconCls: 'fa-bank', children: [

                    ]}
                ]
            },
            {
                text: '置业流程', expanded: true, children: [
                    { text: '经营审批', iconCls: 'fa-tags', children: [

                    ]},
                    { text: '财务审批', action: '', iconCls: 'fa-bank', children: [

                    ]}
                ]
            }]
    }
});