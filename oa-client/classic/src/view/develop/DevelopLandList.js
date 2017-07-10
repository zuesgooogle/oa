Ext.define('oa.view.develop.DevelopLandList', {
    extend: 'Ext.grid.Panel',
    xtype: 'developLandList',

    id: 'developLandList',
    alias: 'developLandList',

    controller: 'developLand',

    title: '土地开发进度管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addDevelopLand'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewDevelopLand'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deleteDevelopLand'
        }],

    store: {
        type: 'developLand'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },

        { text: '任务类型', dataIndex: 'taskTypeId', width: 100,
            renderer: function(value, cellmeta, recrod) {
                var store = Ext.getStore('taskClassifi');
                    index = store.find('id', value); 
                    name = store.getAt(index).get('name'); 
                return name; 
            }
        },
        { text: '任务名称', dataIndex: 'taskNameId', width: 200, 
            renderer: function(value, cellmeta, recrod) {
                var store = Ext.getStore('taskClassifi');
                    index = store.find('id', value); 
                    name = store.getAt(index).get('name'); 
                return name; 
            }
        },
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
        beforerender: function (grid) {
            StoreManager.syncLoadStore('store.taskClassifi', function() {
                grid.getStore().load();
            });
        },
        itemdblclick: 'viewDevelopLand'
    }

});