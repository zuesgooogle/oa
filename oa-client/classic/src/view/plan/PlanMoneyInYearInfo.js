Ext.define('oa.view.plan.PlanMoneyInYearInfo', {
    extend: 'Ext.window.Window',
    xtype: 'planMoneyInYearInfo',

    alias: 'planMoneyInYearInfo',
    id: 'planMoneyInYearInfo',

    controller: 'planMoneyInYear',

    title: '年度收入计划',
    modal: false,
    resizable: false,

    width: 800,
    height: 660,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/plan/money/in/year/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "padding: 5px",
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { fieldLabel: '年份', name: 'year', xtype: 'numberfield', allowBlank: false },
                    { name: 'company', xtype: 'companyCombo', allowBlank: false },
                    { name: 'departmentId', xtype: 'departmentSingleSelect' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '单位名称', name: 'organizer', xtype: 'textfield' },
                    { fieldLabel: '合同名称', name: 'contractName', xtype: 'textfield' },
                    { fieldLabel: '合同金额', name: 'contractAmount', xtype: 'numberfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "padding: 5px",
                items: [
                    { fieldLabel: '1月份', name: 'month1', xtype: 'numberfield' },
                    { fieldLabel: '2月份', name: 'month2', xtype: 'numberfield' },
                    { fieldLabel: '3月份', name: 'month3', xtype: 'numberfield' },
                    { fieldLabel: '4月份', name: 'month4', xtype: 'numberfield' },
                    { fieldLabel: '5月份', name: 'month5', xtype: 'numberfield' },
                    { fieldLabel: '6月份', name: 'month6', xtype: 'numberfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '7月份', name: 'month7', xtype: 'numberfield' },
                    { fieldLabel: '8月份', name: 'month8', xtype: 'numberfield' },
                    { fieldLabel: '9月份', name: 'month9', xtype: 'numberfield' },
                    { fieldLabel: '10月份', name: 'month10', xtype: 'numberfield' },
                    { fieldLabel: '11月份', name: 'month11', xtype: 'numberfield' },
                    { fieldLabel: '12月份', name: 'month12', xtype: 'numberfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                items: [
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
            handler: 'updatePlanMoneyInYear'
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