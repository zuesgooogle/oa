Ext.define('oa.store.DevelopLand', {
    extend: 'Ext.data.Store',

    id: 'store.developLand',
    alias: 'store.developLand',

    model: 'oa.model.DevelopLand',

    autoLoad: true,
    proxy: {
        actionMethods : {
            read   : 'POST',
            create : 'POST',
            update : 'POST',
            destroy: 'POST'
        },
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'develop/land/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});