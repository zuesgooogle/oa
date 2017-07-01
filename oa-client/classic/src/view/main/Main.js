Ext.define('oa.view.main.Main', {
    extend: 'Ext.container.Viewport',
    xtype: 'app-main',
    layout: 'border',
    rtl: false,

    requires: [
        'Ext.plugin.Viewport',
        'Ext.window.MessageBox',
        'Ext.tree.TreePanel',
        'Ext.tab.Panel',

        'oa.store.Menu',
        'oa.view.main.MainController',
        'oa.view.main.MainModel'
    ],

    controller: 'main',
    viewModel: 'main',

    items: [{
        region: 'north',
        title: '天津京宝置业有限公司OA系统',
        height: 50,
        html: '',
        scrollable: false,
        collapsible: false,
        split: true,
        tools: [{
            type: 'exit',
            tooltip: '退出',
            handler: 'onLogout'
        }]
    }, {
        region: 'west',
        id: 'west-region',
        title: '菜单',
        width: 210,
        collapsible: true,
        scrollable: true,
        split: true,
        items: [{
            xtype: 'treepanel',
            border: false,
            rootVisible: false,
            loadMask: true,
            store: {
                type: 'menu'
            },
            listeners: {
                // render: function(tree) {
                //     tree.getStore().reload();
                // },
                itemclick: 'onMenuClick'
            }
        }]
    }, {
        region: 'center',
        title: '',
        xtype: 'tabpanel',
        id: 'workspace'
    }, {
        region: 'east',
        title: '通知',
        width: 200,
        collapsible: true,
        split: true
    }, {
        region: 'south',
        title: '',
        height: 50,
        collapsible: false,
        split: true,
        defaultAlign: 'center',
        html: '<div style="text-align: center"><p>天津京宝置业有限公司 Copyright © 2009-2018</p></div>'
    }]

});
