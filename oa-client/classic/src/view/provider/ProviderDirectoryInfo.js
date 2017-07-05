Ext.define('oa.view.provider.providerDirectoryInfo', {
    extend: 'Ext.window.Window',
    xtype: 'providerDirectoryInfo',

    alias: 'providerDirectoryInfo',
    id: 'providerDirectoryInfo',

    controller: 'providerDirectory',

    title: '供方信息',
    modal: false,
    resizable: false,

    width: 600,
    height: 650,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'provider/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'ID', name: 'id', xtype: 'numberfield', hidden: true},
            { fieldLabel: '供方名称', name: 'name', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '供方品类', name: 'type', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '内容', name: 'content', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '联系人', name: 'linkman', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '联系电话', name: 'phone', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '地址', name: 'address', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '邮编', name: 'postcode', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '考察评审表', name: 'assessTable', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '能力评审表', name: 'abilityTable', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '供方评价表', name: 'provideTable', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '备注', name: 'remark', xtype: 'textfield', allowBlank: false },
            {
                fieldLabel: '创建时间', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateProviderDirectory'
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