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
        url: 'http://127.0.0.1:8080/ws/department/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});