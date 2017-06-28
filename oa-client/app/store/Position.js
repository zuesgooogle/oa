Ext.define('oa.store.Position', {
    extend: 'Ext.data.TreeStore',

    id: 'store.position',
    alias: 'store.position',

    fields: [{
        name: 'text',
        mapping: 'name'
    }],

    root: {
        id: 1,
        text: 'Root',
        expanded: true
    },

    autoLoad: true,
    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'position/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});