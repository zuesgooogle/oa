Ext.define('oa.view.position.PositionTree', {
    extend: 'Ext.tree.Panel',
    xtype: 'positionTree',

    id: 'positionTree',
    alias: 'positionTree',

    controller: 'position',

    title: '职位管理',
    closable: true,

    rootVisible: false,
    store: {
        type: 'position',
        proxy: {
            type: 'ajax',
            url: oa.config.Config.BASE_URL + 'position/list'
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