Ext.define('oa.store.TaskClassifi', {
    extend: 'Ext.data.Store',

    id: 'store.taskClassifi',
    alias: 'store.taskClassifi',
    storeId: 'taskClassifi',

    model: 'oa.model.TaskClassifi',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'taskclassifi/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});