Ext.define('oa.view.setting.TaskClassifiController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.taskclassifi',

    store: ['taskclassifi'],

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
                handler: me.addTaskClassifi
            }, {
                text: '修改',
                iconCls: 'x-fa fa-edit',
                handler: me.updateTaskClassifi
            }, {
                text: '删除',
                iconCls: 'x-fa fa-remove',
                handler: me.deleteTaskClassifi
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

    addTaskClassifi: function (sender) {
        // var tree = sender.up('treepanel');
        // var parentNode = tree.getSelectionModel().getSelection()[0];
        var parentNode = sender.up('menu').treeNode;

        Ext.Msg.prompt('任务类型', '请输入任务名称: \n', function (btn, text) {
            if (btn == 'ok') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'taskclassifi/add',
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

    deleteTaskClassifi: function (sender) {
        var record = sender.up('menu').treeNode;

        if (record == null) {
            Ext.Msg.alert('错误信息', '请选择需要删除的任务类型！');
            return;
        }

        Ext.MessageBox.confirm("删除信息", "您确认要删除任务类型？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'taskclassifi/delete',
                    method: 'POST',
                    params: {
                        id: record.data.id
                    },
                    success: function (response, opts) {
                        record.remove(true);
                    },

                    failure: function (response, opts) {
                        Ext.Msg.alert('Failed', action.result.msg);
                    }
                });
            }
        });
    },

    updateTaskClassifi: function (sender) {
        var record = sender.up('menu').treeNode;

        Ext.Msg.prompt('任务类型', '请输入任务类型: \n', function (btn, text) {
            if (btn == 'ok') {
                 Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'taskclassifi/update',
                    method: 'POST',
                    params: {
                        id: record.data.id,
                        name: text
                    },
                    success: function (response, opts) {
                        var result = Ext.decode(response.responseText);
                        record.data.text = text;

                        Ext.getCmp('taskClassifiTree').getView().refresh();
                    },

                    failure: function (response, opts) {
                        console.log('server-side failure with status code ' + response.status);
                    }
                });
            }
        }, this, false, record.data.text);
    }
});