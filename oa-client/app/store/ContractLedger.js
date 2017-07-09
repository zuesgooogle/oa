Ext.define('oa.store.ContractLedger', {
    extend: 'Ext.data.Store',

    id: 'store.contractLedger',
    alias: 'store.contractLedger',

    model: 'oa.model.ContractLedger',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'ledger/contract/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});