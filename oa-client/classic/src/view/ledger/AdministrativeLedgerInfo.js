Ext.define('oa.view.ledger.AdministrativeLedgerInfo', {
    extend: 'Ext.window.Window',
    xtype: 'administrativeLedgerInfo',

    alias: 'administrativeLedgerInfo',
    id: 'administrativeLedgerInfo',

    controller: 'administrativeLedger',

    title: '行政性收费台账',
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
        url: oa.config.Config.BASE_URL + 'ledger/administrative/update',

        bodyStyle: "padding:10px",
        items: [
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
                items: [
                    { fieldLabel: 'Id', name: 'id', xtype: 'textfield', hidden: true },
                    { fieldLabel: '公司', name: 'company', xtype: 'companyCombo', allowBlank: false },
                    { fieldLabel: '片区/地块名称', name: 'areaLandId', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '成本科目', name: 'subjectId', xtype: 'numberfield', allowBlank: false },
                    { fieldLabel: '内容', name: 'content', xtype: 'textfield', allowBlank: false }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style:  "padding: 5px",
                items: [
                    { fieldLabel: '名称', name: 'name', xtype: 'textfield' },
                    { fieldLabel: '应支付金额', name: 'payableAmount', xtype: 'numberfield' },
                    { fieldLabel: '付款条件', name: 'payCondition', xtype: 'textfield' },
                    { fieldLabel: '签约方', name: 'signatory', xtype: 'textfield' },
                    { fieldLabel: '累计付款金额', name: 'payTotal', xtype: 'numberfield' }    
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: .5,
                layout: 'form',
                defaults: { anchor: '95%' },
                style:  "margin-left: 5px; padding: 5px",
                items: [
                    { fieldLabel: '联系人', name: 'linkman', xtype: 'textfield' },
                    { fieldLabel: '联系人电话', name: 'phone', xtype: 'textfield' },
                    { fieldLabel: '发起部门', name: 'departmentId', xtype: 'departmentSingleSelect' },
                    { fieldLabel: '发起人', name: 'userId', xtype: 'userCombo' },
                    { fieldLabel: '合同签订时间', name: 'signTime', xtype: 'datefield', format: 'Y-m-d H:i:s', editable: false }
                ]
            },
            {
                xtype: 'fieldset',
                columnWidth: 1,
                layout: 'form',
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
            handler: 'updateAdministrativeLedger'
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