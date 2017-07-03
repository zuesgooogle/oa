Ext.define('oa.view.position.PositionList', {
    extend: 'Ext.grid.Panel',
    xtype: 'positionList',

    id: 'positionList',
    alias: 'positionList',
    reference: 'positionList',

    requires: [
        'oa.store.Position'
    ],

    controller: 'position',

    title: '职位管理',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPosition'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPosition'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePosition'
        }],

    store: {
        type: 'position'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        {
            text: '所属公司', dataIndex: 'company', width: 200,
            renderer: function (value, cellmeta, record) {
                return Utils.rendererCompany(value);
            }
        },
        { text: '职位名称', dataIndex: 'name', width: 200 },
        { text: '职位等级', dataIndex: 'level', width: 100 },
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
        itemdblclick: 'viewPosition'
    }

});