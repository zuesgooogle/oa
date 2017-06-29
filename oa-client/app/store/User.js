Ext.define('oa.store.User', {
    extend: 'Ext.data.Store',

    id: 'store.user',
    alias: 'store.user',

    fields: ['id', 'username', 'createTime'],

    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'user/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});