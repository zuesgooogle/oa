Ext.define('oa.view.workflow.WorkflowList', {
    extend: 'Ext.grid.Panel',
    xtype: 'workflowList',

    id: 'workflowList',
    alias: 'workflowList',
    reference: 'workflowList',

    requires: [
        'oa.store.Workflow'
    ],

    controller: 'workflow',

    title: '审批管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addWorkflow'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewWorkflow'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteWorkflow'
        }],

    store: {
        type: 'workflow'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '创建人', dataIndex: 'createId', width: 100 },
        { text: '执行人', dataIndex: 'userId', width: 100 },
        { text: '状态', dataIndex: 'status', width: 100 },
        { text: 'Task', dataIndex: 'taskId', width: 100 },
        {
            text: '时间', dataIndex: 'createTime', width: 200,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        },
        { flex: 1 }
    ],
    bbar: {
        xtype: 'pagingtoolbar',
        displayInfo: true
    },

    initComponent: function () {
        this.callParent(arguments);
        this.getSelectionModel().on('selectionchange', this.onSelectChange, this);
    },

    onSelectChange: function (selModel, selections) {
        this.down('#update').setDisabled(selections.length === 0);
        this.down('#delete').setDisabled(selections.length === 0);
    },

    listeners: {
        render: function (grid) {
            var store = grid.getStore();
            store.load();
        },
        itemdblclick: 'viewworkflow'
    }

});