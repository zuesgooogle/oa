Ext.define('oa.view.plan.PlanMoneyInMonthList', {
    extend: 'Ext.grid.Panel',
    xtype: 'planMoneyInMonthList',

    id: 'planMoneyInMonthList',
    alias: 'planMoneyInMonthList',

    controller: 'planMoneyInMonth',

    title: '月度收入计划',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPlanMoneyInMonth'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPlanMoneyInMonth'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePlanMoneyInMonth'
        }],

    store: {
        type: 'planMoneyInMonth'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        {
            text: '所属公司', dataIndex: 'company', width: 200,
            renderer: function (value, cellmeta, record) {
                return Utils.rendererCompany(value);
            }
        },
        {text: '部门', dataIndex: 'departmentId', width: 100},
        {text: '项目', dataIndex: 'projectId', width: 100},
        {text: '成本科目', dataIndex: 'subjectId', width: 100},
        {text: '单位名称', dataIndex: 'organizer', width: 100},
        {text: '合同名称', dataIndex: 'contractName', width: 100},
        {text: '全年计划总额', dataIndex: 'total', width: 100},
        {
            text: '创建时间', dataIndex: 'createTime', width: 200,
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
        itemdblclick: 'viewPlanMoneyInMonth'
    }

});