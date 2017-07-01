Ext.define('oa.view.project.ProjectList', {
    extend: 'Ext.grid.Panel',
    xtype: 'projectList',

    id: 'projectList',
    alias: 'projectList',
    reference: 'projectList',

    requires: [
        'oa.store.Project'
    ],

    controller: 'project',

    title: '项目管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addProject'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewProject'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteProject'
        }],

    store: {
        type: 'project'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '项目名称', dataIndex: 'name', width: 200 },
        {
            text: '所属公司', dataIndex: 'company', width: 200,
            renderer: function (value, cellmeta, record) {
                return Utils.rendererCompany(value);
            }
        },
        {
            text: '创建时间', dataIndex: 'createTime', flex: 1,
            renderer: function (value, cellmeta, record) {
                return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
            }
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
        itemdblclick: 'viewProject'
    }

});