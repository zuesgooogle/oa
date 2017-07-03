Ext.define('oa.store.Workflow', {
    extend: 'Ext.data.Store',

    id: 'store.workflow',
    alias: 'store.workflow',

    model: 'oa.model.Workflow',

    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'workflow/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});