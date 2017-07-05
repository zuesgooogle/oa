Ext.define('oa.store.AdministrativeLedger', {
    extend: 'Ext.data.Store',

    id: 'store.administrativeLedger',
    alias: 'store.administrativeLedger',

    model: 'oa.model.AdministrativeLedger',
    autoLoad: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'ledger/administrative/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});