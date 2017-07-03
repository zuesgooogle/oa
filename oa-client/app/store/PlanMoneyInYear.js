Ext.define('oa.store.PlanMoneyInYear', {
    extend: 'Ext.data.Store',

    id: 'store.planMoneyInYear',
    alias: 'store.planMoneyInYear',

    model: 'oa.model.PlanMoneyInYear',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/money/in/year/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});