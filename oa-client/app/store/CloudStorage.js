Ext.define('oa.store.CloudStorage', {
    extend: 'Ext.data.Store',

    id: 'store.coudStorage',
    alias: 'store.cloudStorage',

    model: 'oa.model.CloudStorage',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'cloudstorage/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});