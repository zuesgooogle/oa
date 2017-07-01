Ext.define('oa.store.Section', {
    extend: 'Ext.data.Store',

    id: 'store.section',
    alias: 'store.section',

    model: 'oa.model.Section',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'section/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});