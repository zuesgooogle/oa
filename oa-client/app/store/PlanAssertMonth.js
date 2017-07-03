Ext.define('oa.store.PlanAssertMonth', {
    extend: 'Ext.data.Store',

    id: 'store.planAssertMonth',
    alias: 'store.planAssertMonth',

    model: 'oa.model.PlanAssertMonth',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/assert/month/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});