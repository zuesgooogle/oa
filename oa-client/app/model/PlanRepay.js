Ext.define('oa.model.PlanRepay', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'year',
    'month',
    'bankId',
    'projectName',
    'totalLoanAmount',
    'planAmount',
    'planRemainLoanAmount',
    'actualAmount',
    'actualRemainLoanAmount',
    'remark',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});