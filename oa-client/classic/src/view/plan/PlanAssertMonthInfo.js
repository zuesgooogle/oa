Ext.define('oa.view.plan.PlanAssertMonthInfo', {
    extend: 'Ext.window.Window',
    xtype: 'planAssertMonthInfo',

    alias: 'planAssertMonthInfo',
    id: 'planAssertMonthInfo',

    controller: 'planAssertMonth',

    title: '月度资产购置计划',
    modal: false,
    resizable: false,

    width: 800,
    height: 600,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/plan/assert/month/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
            { fieldLabel: '年', name: 'year', xtype: 'yearCombo', allowBlank: false },
            { fieldLabel: '月', name: 'month', xtype: 'monthCombo', allowBlank: false },
            { fieldLabel: '资产类型', name: 'assertId', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '资产名称', name: 'assertName', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '年度计划购置数量', name: 'yearTotalNum', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '已购置数量', name: 'boughtNum', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '本月计划数量', name: 'planNum', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '单价', name: 'unitPrice', xtype: 'numberfield', allowBlank: false },
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
            handler: 'updatePlanAssertMonth'
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