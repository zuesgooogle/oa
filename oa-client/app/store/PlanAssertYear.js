Ext.define('oa.store.PlanAssertYear', {
    extend: 'Ext.data.Store',

    id: 'store.planAssertYear',
    alias: 'store.planAssertYear',

    model: 'oa.model.PlanAssertYear',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/plan/assert/year/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});