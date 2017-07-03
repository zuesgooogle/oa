Ext.define('oa.model.PlanMoneyInMonth', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'company',
    'departmentId',
    'projectId',
    'subjectId',
    'organizer',
    'contractName',
    'total',
    'planAmount',
    'actualAmount',
    'remark',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});