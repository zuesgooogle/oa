Ext.define('oa.store.FinancingLedger', {
    extend: 'Ext.data.Store',

    id: 'store.financingLedger',
    alias: 'store.financingLedger',

    model: 'oa.model.FinancingLedger',

    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'financing/ledger/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});