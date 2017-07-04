Ext.define('oa.model.FinancingLedger', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    },
    'year',
    'month',
    'type',
    'bankId',
    'projectName',
    'amount',
    'financingAmount',
    'totalLending',
    'totalReplayLoan',
    'remainLoan',
    'deadline',
    'rate',
    'guaranty',
    'keyNode',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }]
});