Ext.define('oa.view.plan.PlanMoneyOutMonthInfo', {
    extend: 'Ext.window.Window',
    xtype: 'planMoneyOutMonthInfo',

    alias: 'planMoneyOutMonthInfo',
    id: 'planMoneyOutMonthInfo',

    controller: 'planMoneyOutMonth',

    title: '月度资金计划',
    modal: false,
    resizable: false,

    width: 800,
    height: 600,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/plan/money/out/month/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { name: 'company', xtype: 'companyCombo', allowBlank: false },
                    { name: 'departmentId', xtype: 'departmentSingleSelect', allowBlank: false },
                    { fieldLabel: '项目', name: 'projectId', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '成本科目', name: 'subjectId', xtype: 'textfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "padding: 5px",
                items: [
                    { fieldLabel: '收款单位', name: 'receiver', xtype: 'textfield' },
                    { fieldLabel: '合同名称', name: 'contractName', xtype: 'textfield' },
                    { fieldLabel: '合同金额', name: 'contractAmount', xtype: 'numberfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '已支付金额', name: 'paidAmount', xtype: 'numberfield' },
                    { fieldLabel: '本月计划支付', name: 'planAmount', xtype: 'numberfield' },
                    { fieldLabel: '本月实际支付', name: 'actualAmount', xtype: 'numberfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                items: [
                    { fieldLabel: '说明', name: 'remark', xtype: 'textfield' },
                    {
                        fieldLabel: '时间', name: 'createTime', xtype: 'textfield', editable: false,
                        beforeshow: function (value) {
                            console.log('createTime: ' + value);
                            return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                        }
                    }
                ]
            }

        ],
        buttons: [{
            text: 'Submit',
            handler: 'updatePlanMoneyOutMonth'
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