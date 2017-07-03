Ext.define('oa.store.Financing', {
    extend: 'Ext.data.Store',

    id: 'store.financing',
    alias: 'store.financing',

    model: 'oa.model.Financing',

    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'financing/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});