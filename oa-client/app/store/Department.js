Ext.define('oa.store.Department', {
    extend: 'Ext.data.Store',

    alias: 'store.department',

    fields: ['id', 'name', 'createTime'],

    proxy: {
        type: 'ajax',
        actionMethods: {
            create : 'POST',
            read   : 'POST',
            update : 'POST',
            destroy: 'POST'
        },
        url: oa.config.Config.BASE_URL + 'department/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});