Ext.define('oa.view.plan.PlanRepayList', {
    extend: 'Ext.grid.Panel',
    xtype: 'planRepayList',

    id: 'planRepayList',
    alias: 'planRepayList',

    controller: 'planRepay',

    title: '还款计划',
    scrollable: true,
    closable: true,

    tbar: [
        {
            xtype: 'button',
            text: '新增',
            iconCls: 'x-fa fa-plus',
            handler: 'addPlanRepay'
        }, {
            itemId: 'update',
            text: '修改',
            iconCls: 'x-fa fa-edit',
            disabled: true,
            handler: 'viewPlanRepay'
        }, {
            itemId: 'delete',
            text: '删除',
            iconCls: 'x-fa fa-remove',
            disabled: true,
            handler: 'deletePlanRepay'
        }],

    store: {
        type: 'planRepay'
    },

    columns: [
        { text: 'ID', dataIndex: 'id', width: 100 },
        { text: '年份', dataIndex: 'year', width: 50 },
        { text: '月份', dataIndex: 'month', width: 50 },
        { text: '银行', dataIndex: 'bankId', width: 150,
            renderer: function(value, cellmeta, recrod) {
                var bs = Ext.getStore('store.bank');
                    index = bs.find('id', value); 
                    name = bs.getAt(index).get('name'); 
                return name; 
            }
        },
        { text: '项目', dataIndex: 'projectName', width: 100 },
        { text: '合同', dataIndex: 'contractName', width: 100 },
        { text: '累计已放款金额', dataIndex: 'totalLoanAmount', width: 150 },
        { text: '本月计划还款金额', dataIndex: 'planAmount', width: 150 },
        { text: '计划还款贷款余额', dataIndex: 'planRemainLoanAmount', width: 150 },
        { text: '实际本月还款金额', dataIndex: 'actualAmount', width: 150 },
        { text: '实际还款贷款余额', dataIndex: 'actualRemainLoanAmount', width: 150 },
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
            StoreManager.syncLoadStore('store.bank', function() {
                grid.getStore().load();
            });
        },
        itemdblclick: 'viewPlanRepay'
    }

});