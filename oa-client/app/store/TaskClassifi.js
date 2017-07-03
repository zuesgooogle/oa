Ext.define('oa.store.TaskClassifi', {
    extend: 'Ext.data.TreeStore',

    id: 'store.taskclassifi',
    alias: 'store.taskclassifi',

    fields: [{
        name: 'text',
        mapping: 'name'
    }],

    root: {
        id: 0,
        text: '任务分类',
        expanded: true
    },

    autoLoad: true,
    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'taskclassifi/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});