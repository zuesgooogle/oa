Ext.define('oa.view.develop.financingLedgerInfo', {
    extend: 'Ext.window.Window',
    xtype: 'financingLedgerInfo',

    alias: 'financingLedgerInfo',
    id: 'financingLedgerInfo',

    controller: 'financingLedger',

    title: '台账信息',
    modal: false,
    resizable: false,

    width: 600,
    height: 760,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'financing/ledger/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'ID', name: 'id', xtype: 'numberfield', hidden: true},
            { fieldLabel: '年', name: 'year', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '月', name: 'month', xtype: 'monthCombo', allowBlank: false },
            { fieldLabel: '类型', name: 'type', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '银行', name: 'bankId', xtype: 'bankCombo', allowBlank: false },
            { fieldLabel: '项目', name: 'projectName', xtype: 'textfield', allowBlank: false },

            { fieldLabel: '额度', name: 'amount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '计划融资金额', name: 'financingAmount', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '累计已放款金额', name: 'totalLending', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '累计已还款金额', name: 'totalReplayLoan', xtype: 'numberfield', allowBlank: false },
            { fieldLabel: '贷款余额', name: 'remainLoan', xtype: 'numberfield', allowBlank: false },

            { fieldLabel: '期限', name: 'deadline', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '利率', name: 'rate', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '担保方式', name: 'guaranty', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '关键节点', name: 'keyNode', xtype: 'textfield', allowBlank: false },
            {
                fieldLabel: '创建时间', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateFinancingLedger'
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