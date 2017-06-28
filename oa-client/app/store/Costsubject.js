Ext.define('oa.store.Costsubject', {
    extend: 'Ext.data.TreeStore',

    id: 'store.costsubject',
    alias: 'store.costsubject',

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
        url: oa.config.Config.BASE_URL + 'costsubject/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});