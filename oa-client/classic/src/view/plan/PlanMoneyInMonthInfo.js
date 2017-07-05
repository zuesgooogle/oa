Ext.define('oa.view.plan.PlanMoneyInMonthInfo', {
    extend: 'Ext.window.Window',
    xtype: 'planMoneyInMonthInfo',

    alias: 'planMoneyInMonthInfo',
    id: 'planMoneyInMonthInfo',

    controller: 'planMoneyInMonth',

    title: '月度收入计划',
    modal: false,
    resizable: false,

    width: 800,
    height: 500,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/plan/money/in/month/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: 0.5,
                layout: 'form',
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { name: 'company', xtype: 'companyCombo', allowBlank: false },
                    { name: 'departmentId', xtype: 'departmentSingleSelect', allowBlank: false },
                    { fieldLabel: '项目', name: 'projectId', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '成本科目', name: 'subjectId', xtype: 'textfield' },
                    { fieldLabel: '单位名称', name: 'organizer', xtype: 'textfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '合同名称', name: 'contractName', xtype: 'textfield' },
                    { fieldLabel: '全年计划总额', name: 'total', xtype: 'numberfield' },
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
            handler: 'updatePlanMoneyInMonth'
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