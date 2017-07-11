Ext.define('oa.view.supplement.SupplementFinancingInfo', {
    extend: 'Ext.window.Window',
    xtype: 'supplementFinancingInfo',

    alias: 'supplementFinancingInfo',
    id: 'supplementFinancingInfo',

    controller: 'supplementFinancing',

    title: '补充数据-财务',
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
        url: oa.config.Config.BASE_URL + '/supplement/financing/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "padding: 5px",
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { fieldLabel: '年份', name: 'year', xtype: 'yearCombo', allowBlank: false },
                    { fieldLabel: '月份', name: 'month', xtype: 'monthCombo', allowBlank: false },
                    { fieldLabel: '类型', name: 'type', xtype: 'textfield', allowBlank: false }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "padding: 5px",
                items: [
                    { fieldLabel: '负债', name: 'asserts', xtype: 'numberfield' },
                    { fieldLabel: '负债', name: 'debt', xtype: 'numberfield' },
                    { fieldLabel: '资产负债率', name: 'debtRatio', xtype: 'numberfield' },
                    { fieldLabel: '所有者权益', name: 'equity', xtype: 'numberfield' },
                    { fieldLabel: '净资产收益率', name: 'equityRatio', xtype: 'numberfield' }
                       
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '管理费', name: 'maintenance', xtype: 'numberfield' },
                    { fieldLabel: '利润', name: 'profit', xtype: 'numberfield' },
                    { fieldLabel: '营业收入', name: 'taking', xtype: 'numberfield' },
                    { fieldLabel: '金融机构借款本金', name: 'borrowAmount', xtype: 'numberfield' },
                    { fieldLabel: '其他支出', name: 'otherAmount', xtype: 'numberfield' }
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
            handler: 'updateSupplementFinancing'
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