Ext.define('oa.view.develop.FinancingList', {
    extend: 'Ext.grid.Panel',
    xtype: 'financingList',

    id: 'financingList',
    alias: 'financingList',

    controller: 'financing',

    title: '融资进度管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addFinancing'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewFinancing'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteFinancing'
        }],

    store: {
        type: 'financing'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },

        { text: '任务类型', dataIndex: 'taskTypeId', width: 100 },
        { text: '任务名称', dataIndex: 'taskNameId', width: 100 },
        {
            text: '计划开始时间', dataIndex: 'planStartTime', width: 150,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d');
            }
        },
        {
            text: '计划结束时间', dataIndex: 'planEndTime', width: 150,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d');
            }
        },
        {
            text: '实际开始时间', dataIndex: 'actualStartTime', width: 150,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d');
            }
        },
        {
            text: '实际结束时间', dataIndex: 'actualEndTime', width: 150,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d');
            }
        },
        { text: '责任单位', dataIndex: 'organizer', width: 100 },
        { text: '责任部门', dataIndex: 'departmentId', width: 100 },
        { text: '责任人', dataIndex: 'userId', width: 100 },
        {
            text: '创建时间', dataIndex: 'createTime', width: 200,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
        }, {
            flex: 1
        }
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
        itemdblclick: 'viewFinancing'
    }

});