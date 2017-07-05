Ext.define('oa.view.setting.areaInfo', {
    extend: 'Ext.window.Window',
    xtype: 'areaInfo',

    alias: 'areaInfo',
    id: 'areaInfo',

    controller: 'area',

    title: '片区信息',
    modal: false,
    resizable: false,

    width: 400,
    height: 300,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'area/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'ID', name: 'id', xtype: 'textfield', hidden: true},
            { fieldLabel: '片区名称', name: 'name', xtype: 'textfield', allowBlank: false },
            {
                fieldLabel: '创建时间', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateArea'
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