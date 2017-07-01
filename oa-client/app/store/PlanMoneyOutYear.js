Ext.define('oa.store.PlanMoneyOutYear', {
    extend: 'Ext.data.Store',

    id: 'store.planMoneyOutYear',
    alias: 'store.planMoneyOutYear',

    model: 'oa.model.PlanMoneyOutYear',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/money/out/year/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});