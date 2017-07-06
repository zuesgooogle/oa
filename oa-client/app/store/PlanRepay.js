Ext.define('oa.store.PlanRepay', {
    extend: 'Ext.data.Store',

    id: 'store.planRepay',
    alias: 'store.planRepay',

    model: 'oa.model.PlanRepay',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/repay/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});