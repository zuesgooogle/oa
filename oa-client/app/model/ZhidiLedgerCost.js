Ext.define('oa.model.ZhidiLedgerCost', {
    extend: 'Ext.data.Model',

    alias: 'zhidiLedgerCost',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'area', 
    'subjectId', 
    'calculateInvest', 
    'expectInvest', 
    'totalInvest', 
    'auditStatistics', 
    'govConfirm', 
    'govCheck', 
    'uncheck',
    'remark', 
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});