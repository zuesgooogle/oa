Ext.define('oa.store.DevelopSecond', {
    extend: 'Ext.data.Store',

    id: 'store.developSecond',
    alias: 'store.developSecond',

    model: 'oa.model.DevelopSecond',

    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'develop/second/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});