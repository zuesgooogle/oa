Ext.define('oa.store.Land', {
    extend: 'Ext.data.Store',

    id: 'store.land',
    alias: 'store.land',
    storeId: 'land',

    model: 'oa.model.Land',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'land/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});