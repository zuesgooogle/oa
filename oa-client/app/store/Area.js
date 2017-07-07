Ext.define('oa.store.Area', {
    extend: 'Ext.data.Store',

    id: 'store.area',
    alias: 'store.area',

    storeId: 'area',

    model: 'oa.model.Area',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'area/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});