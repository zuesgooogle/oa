Ext.define('oa.store.Project', {
    extend: 'Ext.data.Store',

    id: 'store.project',
    alias: 'store.project',

    model: 'oa.model.Project',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'project/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});