Ext.define('oa.store.Position', {
    extend: 'Ext.data.Store',

    id: 'store.position',
    alias: 'store.position',

    model: 'oa.model.Position',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'position/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});