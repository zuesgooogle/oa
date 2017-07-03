Ext.define('oa.view.develop.FinancingInfo', {
    extend: 'Ext.window.Window',
    xtype: 'financingInfo',

    alias: 'financingInfo',
    id: 'financingInfo',

    controller: 'financing',

    title: '进度信息',
    modal: false,
    resizable: false,

    width: 600,
    height: 600,

    closeAction: 'destroy',

    items: [{
        xtype: 'form',
        layout: 'anchor',
        defaults: {
            anchor: '100%'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + 'financing/update',

        bodyStyle: "padding:10px 10px 10px 10px",
        items: [
            { fieldLabel: 'ID', name: 'id', xtype: 'numberfield', hidden: true},
            { fieldLabel: '银行', name: 'bankId', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '任务类型', name: 'taskTypeId', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '任务名称', name: 'taskNameId', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '计划开始时间', name: 'planStartTime', xtype: 'datefield', format: 'Y-m-d H:i:s', editable : false, allowBlank: false },
            { fieldLabel: '计划结束时间', name: 'planEndTime', xtype: 'datefield', format: 'Y-m-d H:i:s', editable : false, allowBlank: false },
            { fieldLabel: '实际开始时间', name: 'actualStartTime', xtype: 'datefield', format: 'Y-m-d H:i:s', editable : false, allowBlank: false },
            { fieldLabel: '实际结束时间', name: 'actualEndTime', xtype: 'datefield', format: 'Y-m-d H:i:s', editable : false, allowBlank: false },
            { fieldLabel: '责任单位', name: 'organizer', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '责任部门', name: 'departmentId', xtype: 'textfield', allowBlank: false },
            { fieldLabel: '责任人', name: 'userId', xtype: 'textfield', allowBlank: false },
            {
                fieldLabel: '创建时间', name: 'createTime', xtype: 'textfield', editable: false,
                renderData: function (value) {
                    return Ext.Date.format(new Date(value), 'Y-m-d H:i:s');
                }
            }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'updateFinancing'
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