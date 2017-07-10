Ext.define('oa.view.setting.TaskClassifiTree', {
    extend: 'Ext.tree.Panel',
    xtype: 'TaskClassifiTree',

    requires: ['oa.config.Config'],

    id: 'taskClassifiTree',
    alias: 'taskClassifiTree',

    controller: 'taskclassifi',

    title: '任务分类管理',
    closable: true,

    rootVisible: true,
    store: {
        type: 'taskClassifiTree',
        proxy: {
            type: 'ajax',
            url: oa.config.Config.BASE_URL + 'taskclassifi/list'
        }
    },
    tbar: [{
        text: "展开", 
        iconCls: 'x-fa fa-expand',
        handler: function() {
            this.up('treepanel').expandAll();
        }
    }, "-", {
        text: "折叠", 
        iconCls: 'x-fa fa-compress',
        handler: function() {
            this.up('treepanel').collapseAll();
        }
    }, "-", {
        text: "刷新", 
        iconCls: 'x-fa fa-refresh',
        handler: function () {
            this.up("treepanel").store.load();
        }
    }],
    
    listeners: {
        selectionchange: function (view, record) {
        },
        itemclick: function(view, record, index, e, eOpts) {
            var t = view.getSelectionModel().getSelection()[0];
        },
        itemcontextmenu: 'onItemContextMenu'
    }
});