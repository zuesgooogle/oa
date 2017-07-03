Ext.define('oa.store.Bank', {
    extend: 'Ext.data.Store',

    id: 'store.bank',
    alias: 'store.bank',

    model: 'oa.model.Bank',

    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'bank/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});