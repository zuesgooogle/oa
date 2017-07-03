Ext.define('oa.store.PlanChargeYear', {
    extend: 'Ext.data.Store',

    id: 'store.planChargeYear',
    alias: 'store.planChargeYear',

    model: 'oa.model.PlanChargeYear',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/charge/year/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});