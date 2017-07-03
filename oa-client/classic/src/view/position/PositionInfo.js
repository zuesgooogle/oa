Ext.define('oa.view.position.PositionInfo', {
    extend: 'Ext.window.Window',
    xtype: 'positionInfo',

    alias: 'positionInfo',
    id: 'positionInfo',

    controller: 'position',

    title: '职位信息',
    modal: false,
    resizable: false,

    width: 400,
    height: 400,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'position/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'ID', name: 'id', xtype: 'textfield', hidden: true},
            {name: 'company', xtype: 'companyCombo', allowBlank: false},
            { fieldLabel: '职位名称', name: 'name', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '职位别名', name: 'alias', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '职位等级', name: 'level', xtype: 'positionLevelCombo', allowBlank: false },
            {
                fieldLabel: '创建时间', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updatePosition'
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