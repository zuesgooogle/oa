Ext.define('oa.store.User', {
    extend: 'Ext.data.Store',

    id: 'store.user',
    alias: 'store.user',

    model: 'oa.model.User',

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