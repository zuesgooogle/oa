Ext.define('oa.store.ZhiyeLedgerCost', {
    extend: 'Ext.data.Store',

    id: 'store.zhiyeLedgerCost',
    alias: 'store.zhiyeLedgerCost',

    model: 'oa.model.ZhiyeLedgerCost',

    proxy: {

        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'zhiye/ledger/cost/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});