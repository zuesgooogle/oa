Ext.define('oa.model.ZhiyeLedgerCost', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'year',
    'month',
    'landId', 
    'subjectId', 
    'expectInvest', 
    'contractAmount', 
    'performanceAmount', 
    'paidAmount', 
    'settledAccount', 
    'remark', 
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});