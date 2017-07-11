Ext.define('oa.view.supplement.SupplementManageInfo', {
    extend: 'Ext.window.Window',
    xtype: 'supplementManageInfo',

    alias: 'supplementManageInfo',
    id: 'supplementManageInfo',

    controller: 'supplementManage',

    title: '补充数据-经营',
    modal: false,
    resizable: false,

    width: 800,
    height: 450,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'column',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/supplement/manage/update',

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
                    { fieldLabel: '类型', name: 'type', xtype: 'textfield', allowBlank: false },
                    { fieldLabel: '投资额', name: 'investmentAmount', xtype: 'numberfield' },
                    { fieldLabel: '综合经营额', name: 'compositeAmount', xtype: 'numberfield' }
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
            handler: 'updateSupplementManage'
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