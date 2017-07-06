Ext.define('oa.view.plan.PlanRepayInfo', {
    extend: 'Ext.window.Window',
    xtype: 'planRepayInfo',

    alias: 'planRepayInfo',
    id: 'planRepayInfo',

    controller: 'planRepay',

    title: '还款计划',
    modal: false,
    resizable: false,

    width: 800,
    height: 620,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%',
            labelWidth: 120
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/plan/repay/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'Id', name: 'id', xtype: 'numberfield', hidden: true },
            { fieldLabel: '年', name: 'year', xtype: 'yearCombo', allowBlank: false },
            { fieldLabel: '月', name: 'month', xtype: 'monthCombo', allowBlank: false },
            { fieldLabel: '银行', name: 'bankId', xtype: 'bankCombo', allowBlank: false },
            { fieldLabel: '项目', name: 'projectName', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '累计已放款金额', name: 'totalLoanAmount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '本月计划还款金额', name: 'planAmount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '计划还款贷款余额', name: 'planRemainLoanAmount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '实际本月还款金额', name: 'actualAmount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '实际还款贷款余额', name: 'actualRemainLoanAmount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '说明', name: 'remark', xtype: 'textfield' },
            {
                fieldLabel: '时间', name: 'createTime', xtype: 'textfield', editable: false,
                beforeshow: function (value) {
                    console.log('createTime: ' + value);
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updatePlanRepay'
        }, {
            text: 'Cancel',
            handler: function () {
                this.up("window").close();
            }
        }]
    }],

    initComponent: function () {
        this.callParent(arguments);
    }


});