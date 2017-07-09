Ext.define('oa.store.PlanChargeMonth', {
    extend: 'Ext.data.Store',

    id: 'store.planChargeMonth',
    alias: 'store.planChargeMonth',

    model: 'oa.model.PlanChargeMonth',
    remoteFilter: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/charge/month/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});