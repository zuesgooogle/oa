Ext.define('oa.view.plan.LeaveForm', {
    extend: 'Ext.panel.Panel',
    xtype: 'leaveForm',

    id: 'leaveForm',
    alias: 'leaveForm',

    controller: 'workflow',
    requires: ['oa.ux.DepartmentSingleSelect'],

    title: '请假申请表',
    scrollable: true,
    closable: true,

    closeAction: 'destroy',

    items: [{
        layout: {
            type: 'table',
            columns: 6,
            tableAttrs: {
                align: 'center',
                border: 1,
                style: 'border: 1px solid #d0d0d0;',
                cellpadding: 5,
                cellspacing: 1,
                style: {
                    width: '60%'
                }
            },
            tdAttrs: {
                width: '200px',
                height: '30px',
                style: "text-align: center; padding: 5px",
                valign: 'middle'
            }
        },
        defaults: {
            xtype: 'label'
        },
        method: 'POST',
        url: oa.config.Config.BASE_URL + '/plan/money/in/month/update',

        items: [
            { colspan: 6, fieldLabel: 'Id', name: 'id', xtype: 'numberfield', hidden: true },
            {
                colspan: 6,
                style: 'font-size: 30px',
                text: '\n天津京宝置地有限公司\n'
            },
            { text: '姓名' }, { width: 200, name: 'username', xtype: 'textfield', allowBlank: false },
            { text: '部门' }, { width: 200, fieldLabel: '', name: 'departmentId', xtype: 'departmentSingleSelect', allowBlank: false },
            { text: '年龄' }, { width: 200, name: 'age', xtype: 'numberfield', allowBlank: false },

            { text: '参加工作时间' }, { colspan: 2, width: 200, name: 'workTime', xtype: 'datefield', format: 'Y-m-d H:i:s', allowBlank: false },
            { text: '参加本企业工作时间' }, { colspan: 2, width: 200, name: 'joinCompanTime', xtype: 'datefield', format: 'Y-m-d H:i:s', allowBlank: false },

            { text: '休假类别' }, {
                colspan: 5,
                xtype: 'radiogroup',
                name: 'leaveItype',
                items: [
                    { boxLabel: '病假', name: 'leaveItype', inputValue: 1 },
                    { boxLabel: '事假', name: 'leaveItype', inputValue: 2 },
                    { boxLabel: '婚假', name: 'leaveItype', inputValue: 3 },
                    { boxLabel: '年假', name: 'leaveItype', inputValue: 4 },
                    { boxLabel: '其他', name: 'leaveItype', inputValue: 5 }
                ]
            },
            { text: '申请休假时间' }, { width: 200, name: 'startTime', xtype: 'datefield', format: 'Y-m-d H:i:s', allowBlank: false },
            { text: '至' }, { width: 200, name: 'endTime', xtype: 'datefield', format: 'Y-m-d H:i:s', allowBlank: false },
            { text: '请假天数' }, { width: 200, name: 'dayNum', xtype: 'numberfield', allowBlank: false },
            { text: '请假理由' }, { colspan: 5, width: '100%', name: 'reason', xtype: 'textarea', allowBlank: false },

            { text: '部门负责人意见', rowspan: 2 },
            { colspan: 5, width: '100%', name: 'deptManager', xtype: 'textarea' },
            { colspan: 2 },
            { colspan: 2, width: 200, fieldLabel: '签名', name: 'deptManagerSign', xtype: 'textfield' },
            { colspan: 2, width: 200, fieldLabel: '', name: 'deptManagerTime', xtype: 'datefield', format: 'Y-m-d H:i:s' },

            { text: '主管领导意见', rowspan: 2 },
            { colspan: 5, width: '100%', name: 'leaderManager', xtype: 'textarea' },
            { colspan: 2 },
            { colspan: 2, width: 200, fieldLabel: '签名', name: 'leaderManagerSign', xtype: 'textfield' },
            { colspan: 2, width: 200, fieldLabel: '', name: 'leaderManagerTime', xtype: 'datefield', format: 'Y-m-d H:i:s' },

            { text: '总经理意见', rowspan: 2 },
            { colspan: 5, width: '100%', name: 'generalManager', xtype: 'textarea' },
            { colspan: 2 },
            { colspan: 2, width: 200, fieldLabel: '签名', name: 'generalManagerSign', xtype: 'textfield' },
            { colspan: 2, width: 200, fieldLabel: '', name: 'generalManagerTime', xtype: 'datefield', format: 'Y-m-d H:i:s' },

            { text: '董事长意见', rowspan: 2 },
            { colspan: 5, width: '100%', name: 'chairman', xtype: 'textarea' },
            { colspan: 2 },
            { colspan: 2, width: 200, fieldLabel: '签名', name: 'chairmanSign', xtype: 'textfield' },
            { colspan: 2, width: 200, fieldLabel: '', name: 'chairmanTime', xtype: 'datefield', format: 'Y-m-d H:i:s' },

            { text: '人力资源归档', rowspan: 2 },
            { colspan: 5, width: '100%', name: 'hrManager', xtype: 'textarea' },
            { colspan: 2 },
            { colspan: 2, width: 200, fieldLabel: '签名', name: 'hrManagerSign', xtype: 'textfield' },
            { colspan: 2, width: 200, fieldLabel: '', name: 'hrManagerTime', xtype: 'datefield', format: 'Y-m-d H:i:s' }
        ],
        buttons: [{
            text: 'Submit',
            handler: 'startWorkflow'
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