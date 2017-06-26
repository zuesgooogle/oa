Ext.define('oa.store.Department', {
    extend: 'Ext.data.TreeStore',

    id: 'store.department',
    alias: 'store.department',

    fields: [{
        name: 'text',
        mapping: 'name'
    }],

    root: {
        id: 1,
        text: '所有部门',
        expanded: true
    },

    autoLoad: true,
    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'department/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});