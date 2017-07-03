Ext.define('oa.store.PlanMoneyInMonth', {
    extend: 'Ext.data.Store',

    id: 'store.planMoneyInMonth',
    alias: 'store.planMoneyInMonth',

    model: 'oa.model.PlanMoneyInMonth',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/money/in/month/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});