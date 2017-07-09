Ext.define('oa.view.ledger.ContractLedgerInfo', {
    extend: 'Ext.window.Window',
    xtype: 'ContractLedgerInfo',

    alias: 'contractLedgerInfo',
    id: 'contractLedgerInfo',

    controller: 'contractLedger',

    title: '合同台账',
    modal: false,
    resizable: false,

    width: 800,
    height: 800,
    scrollable: true,
    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'ledger/contract/update',
        bodyStyle: "padding: 10px",
        items: [
            {
                xtype: 'fieldset',
                title: '合同基本信息',
                collapsible: true,
                columnWidth: 1,
                layout: 'form',
                style:  "margin: 5px",
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { fieldLabel: '公司', name: 'company', xtype: 'companyCombo', allowBlank: false },
                    { fieldLabel: '片区/地块名称', name: 'areaLandId', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '收入/支出', name: 'incomeType', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '开发/非开发', name: 'developType', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '合同状态', name: 'contractState', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '合同文件', name: 'contractFile', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '成本科目', name: 'subjectId', xtype: 'numberfield', allowBlank: false }
                ]
            },
            {
                xtype: 'fieldset',
                title: '合同签订信息',
                collapsible: true,
                columnWidth: 1,
                layout: 'form',
                style:  "margin: 5px",
                items: [
                    { fieldLabel: '合同名称', name: 'contractName', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '合同编号', name: 'contractSerial', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '合同内容', name: 'contractContent', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '合同金额', name: 'contractAmount', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '金额状态', name: 'contractAmountState', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '合同付款条件', name: 'contractPayCondition', xtype: 'textfield' },
                    { fieldLabel: '签约方', name: 'signatory', xtype: 'textfield' },
                    { fieldLabel: '合同签订时间', name: 'signTime', xtype: 'datefield', format: 'Y-m-d H:i:s', editable: false },
                    { fieldLabel: '合同工期', name: 'timelimit', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '联系人', name: 'linkman', xtype: 'textfield' },
                    { fieldLabel: '联系人电话', name: 'phone', xtype: 'textfield' }
                ]
            },
            {
                xtype: 'fieldset',
                title: '合同附件信息',
                collapsible: true,
                columnWidth: 1,
                layout: 'form',
                style:  "margin: 5px",
                items: [
                    { fieldLabel: '招标情况', name: 'bidType', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '相关审批', name: 'relateApproveFile', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '方案', name: 'solutionFile', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '预算审批', name: 'budgetApproveFile', xtype: 'textfield', allowBlank: false }
                ]
            },
            {
                xtype: 'fieldset',
                title: '合同下发情况',
                collapsible: true,
                columnWidth: 1,
                layout: 'form',
                style:  "margin: 5px",
                items: [
                    { fieldLabel: '档案', name: 'record', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '相关部门', name: 'relateDepartment', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '财务登记', name: 'financeRegister', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '经营存档', name: 'operateRegister', xtype: 'textfield', allowBlank: false }
                ]
            },
            {
                xtype: 'fieldset',
                title: '合同履约结算',
                collapsible: true,
                columnWidth: 1,
                layout: 'form',
                style:  "margin: 5px",
                items: [
                    { fieldLabel: '履约金额', name: 'performanceAmount', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '结算总金额', name: 'settleAmount', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '保修金总金额', name: 'premiumAmount', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '累计付款金额', name: 'paidAmount', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '履约评价得分', name: 'performanceEvaluate', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '付款比例', name: 'paidPercent', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '发起部门', name: 'departmentId', xtype: 'departmentSingleSelect' },
                    { fieldLabel: '发起人', name: 'userId', xtype: 'userCombo' }
                ]
            },
            {
                xtype: 'fieldset',
                title: '其他',
                collapsible: true,
                columnWidth: 1,
                layout: 'form',
                style:  "margin: 5px",
                items: [
                    { fieldLabel: '档案盒编号', name: 'fileBoxId', xtype: 'textfield' },
                    { fieldLabel: '档案编号', name: 'fileId', xtype: 'textfield' },
                    { fieldLabel: '说明', name: 'remark', xtype: 'textfield' },
                    {
                        fieldLabel: '时间', name: 'createTime', xtype: 'textfield', editable: false,
                        beforeshow: function (value) {
                            return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                        }
                    }
                ]
            }

        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateContractLedger'
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