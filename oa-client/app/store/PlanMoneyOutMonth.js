Ext.define('oa.store.PlanMoneyOutMonth', {
    extend: 'Ext.data.Store',

    id: 'store.planMoneyOutMonth',
    alias: 'store.planMoneyOutMonth',

    model: 'oa.model.PlanMoneyOutMonth',
    remoteFilter: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/money/out/month/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});