Ext.define('oa.view.department.DepartmentController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.department',

    store: ['department'],

    ctxMenu: null,

    init: function () {
    },

    buildCtxMenu: function () {
        var me = this;
        return Ext.create('Ext.menu.Menu', {
            treeNode: null,
            items: [{
                text: '增加',
                iconCls: 'x-fa fa-plus',
                handler: me.addDepartment
            }, {
                text: '修改',
                iconCls: 'x-fa fa-edit',
                handler: me.updateDepartment
            }, {
                text: '删除',
                iconCls: 'x-fa fa-remove',
                handler: me.deleteDepartment
            }, '-', {
                text: '刷新',
                iconCls: 'x-fa fa-refresh'
            }]
        });
    },

    onItemContextMenu: function (view, record, item, index, e) {
        if (!this.ctxMenu) {
            this.ctxMenu = this.buildCtxMenu();
        }
        this.ctxMenu.treeNode = record;

        this.ctxMenu.showAt(e.getXY());
        e.stopEvent();
    },

    addDepartment: function (sender) {
        // var tree = sender.up('treepanel');
        // var parentNode = tree.getSelectionModel().getSelection()[0];
        var parentNode = sender.up('menu').treeNode;

        Ext.Msg.prompt('部门名称', '请输入部门名称: \n', function (btn, text) {
            if (btn == 'ok') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'department/add',
                    method: 'POST',
                    params: {
                        parentId: parentNode.data.id,
                        name: text
                    },
                    success: function (response, opts) {
                        var result = Ext.decode(response.responseText);
                        var node = {
                            id: result.data.id,
                            text: result.data.name,
                            leaf: true
                        };
                        parentNode.appendChild(node);
                    },

                    failure: function (response, opts) {
                        console.log('server-side failure with status code ' + response.status);
                    }
                });
            }
        });
    },

    deleteDepartment: function (sender) {
        // var tree = sender.up('treepanel');
        // var record = tree.getSelectionModel().getSelection()[0];

        var record = sender.up('menu').treeNode;

        if (record == null) {
            Ext.Msg.alert('错误信息', '请选择需要删除的部门！');
            return;
        }

        if (Utils.isCompany(record.data.text)) {
            Ext.Msg.alert('非法操作', '公司目录不能删除！');
            return;
        }

        Ext.MessageBox.confirm("删除部门", "您确认要删除部门？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'department/delete',
                    method: 'POST',
                    params: {
                        id: record.data.id
                    },
                    success: function (response, opts) {
                        // tree.store.load();
                        record.remove(true);
                    },

                    failure: function (response, opts) {
                        Ext.Msg.alert('Failed', action.result.msg);
                    }
                });
            }
        });
    },

    updateDepartment: function (sender) {
        var record = sender.up('menu').treeNode;

        Ext.Msg.prompt('部门名称', '请输入部门名称: \n', function (btn, text) {
            if (btn == 'ok') {
                 Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'department/update',
                    method: 'POST',
                    params: {
                        id: record.data.id,
                        name: text
                    },
                    success: function (response, opts) {
                        var result = Ext.decode(response.responseText);
                        record.data.text = text;

                        Ext.getCmp('departmentTree').getView().refresh();
                    },

                    failure: function (response, opts) {
                        console.log('server-side failure with status code ' + response.status);
                    }
                });
            }
        }, this, false, record.data.text);
    }
});