Ext.define('oa.store.ZhidiLedgerCost', {
    extend: 'Ext.data.Store',

    id: 'store.zhidiLedgerCost',
    alias: 'store.zhidiLedgerCost',

    fields: ['id', 'serialNumber', 'area', 'subjectId', 'projectName',
        'calculateInvest', 'expectInvest', 'totalInvest', 'auditStatistics', 'govConfirm', 'govCheck', 'uncheck',
        'remark', 'createTime'],

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