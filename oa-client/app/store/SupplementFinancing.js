Ext.define('oa.store.SupplementFinancing', {
    extend: 'Ext.data.Store',

    id: 'store.supplementFinancing',
    alias: 'store.supplementFinancing',

    model: 'oa.model.SupplementFinancing',
    remoteFilter: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/supplement/financing/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});