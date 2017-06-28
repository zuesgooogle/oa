Ext.define('oa.view.costsubject.CostsubjectTree', {
    extend: 'Ext.tree.Panel',
    xtype: 'costsubjectTree',

    id: 'costsubjectTree',
    alias: 'costsubjectTree',

    controller: 'costsubject',

    title: '成本科目管理',
    closable: true,

    rootVisible: false,
    store: {
        type: 'costsubject',
        proxy: {
            type: 'ajax',
            url: oa.config.Config.BASE_URL + 'costsubject/list'
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