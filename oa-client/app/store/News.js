Ext.define('oa.store.News', {
    extend: 'Ext.data.Store',

    id: 'store.news',
    alias: 'store.news',
    storeId: 'news',

    model: 'oa.model.News',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'news/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});