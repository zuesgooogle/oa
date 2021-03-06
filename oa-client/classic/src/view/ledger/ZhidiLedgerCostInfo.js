Ext.define('oa.view.ledger.ZhidiLedgerCostInfo', {
    extend: 'Ext.window.Window',
    xtype: 'zhidiLedgerCostInfo',

    alias: 'zhidiLedgerCostInfo',
    id: 'zhidiLedgerCostInfo',

    controller: 'zhidiLedgerCost',

    title: '成本台账信息（置地）',
    modal: false,
    resizable: false,

    width: 800,
    height: 700,
    scrollable: true,
    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'ledger/zhidi/cost/update',

        bodyStyle: "padding:10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { fieldLabel: '年', name: 'year', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '月', name: 'month', xtype: 'monthCombo', allowBlank: false },
                    { fieldLabel: '片区', name: 'areaId', xtype: 'areaCombo', allowBlank: false },
                    { fieldLabel: '成本科目', name: 'subjectId', xtype: 'textfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style:  "padding: 5px",
                items: [
                    { fieldLabel: '可研测算金额', name: 'calculateInvest', xtype: 'numberfield' },
                    { fieldLabel: '预计投入金额', name: 'expectInvest', xtype: 'numberfield' },
                    { fieldLabel: '累计投入', name: 'totalInvest', xtype: 'numberfield' },
                    { fieldLabel: '审计资料统计金额', name: 'auditStatistics', xtype: 'numberfield' }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style:  "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '政府确认金额', name: 'govConfirm', xtype: 'numberfield' },
                    { fieldLabel: '政府程序金额', name: 'govCheck', xtype: 'numberfield' },
                    { fieldLabel: '未核对金额', name: 'uncheck', xtype: 'numberfield' }
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
            handler: 'updateZhidiLedgerCost'
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