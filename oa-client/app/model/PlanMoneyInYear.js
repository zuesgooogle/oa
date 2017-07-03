Ext.define('oa.model.PlanMoneyInYear', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'year',
    'company',
    'departmentId',
    'projectId',
    'subjectId',
    'organizer',
    'contractName',
    'contractAmount',
    'month1',
    'month2',
    'month3',
    'month4',
    'month5',
    'month6',
    'month7',
    'month8',
    'month9',
    'month10',
    'month11',
    'month12',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});