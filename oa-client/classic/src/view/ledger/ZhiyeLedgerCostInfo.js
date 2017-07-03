Ext.define('oa.view.ledger.ZhiyeLedgerCostInfo', {
    extend: 'Ext.window.Window',
    xtype: 'zhiyeLedgerCostInfo',

    alias: 'zhiyeLedgerCostInfo',
    id: 'zhiyeLedgerCostInfo',

    controller: 'zhiyeLedgerCost',

    title: '成本台账信息（置业）',
    modal: false,
    resizable: false,

    width: 800,
    height: 550,
    scrollable: true,
    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'zhiye/ledger/cost/update',

        bodyStyle: "padyeng:10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { fieldLabel: '地块', name: 'area', xtype: 'landCombo', allowBlank: false },
                    { fieldLabel: '成本科目', name: 'subjectId', xtype: 'textfield' },
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "padyeng: 5px",
                items: [
                    { fieldLabel: '预计投入金额', name: 'expectInvest', xtype: 'numberfield' },
                    { fieldLabel: '已签合同金额', name: 'contractAmount', xtype: 'numberfield' },
                    { fieldLabel: '已履约金额', name: 'performanceAmount', xtype: 'numberfield' },
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style: "margin-left: 5px; padyeng: 5px",
                items: [
                    { fieldLabel: '已付金额', name: 'paidAmount', xtype: 'numberfield' },
                    { fieldLabel: '已结束金额', name: 'settledAccount', xtype: 'numberfield' }
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
            },

        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateZhiyeLedgerCost'
        }, {
            text: 'Cancel',
            handler: function () {
                this.up("window").close();
            }
        }],
    }],

    initComponent: function () {
        this.callParent(arguments);
    }


});