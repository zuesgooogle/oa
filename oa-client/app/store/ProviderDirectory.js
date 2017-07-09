Ext.define('oa.store.ProviderDirectory', {
    extend: 'Ext.data.Store',

    id: 'store.providerDirectory',
    alias: 'store.providerDirectory',

    model: 'oa.model.ProviderDirectory',
    remoteFilter: true,
    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'provider/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});