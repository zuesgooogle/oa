Ext.define('oa.store.ZhidiLedgerCost', {
    extend: 'Ext.data.Store',

    id: 'store.zhidiLedgerCost',
    alias: 'store.zhidiLedgerCost',

    model: 'oa.model.ZhidiLedgerCost',

    proxy: {

        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'zhidi/ledger/cost/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});