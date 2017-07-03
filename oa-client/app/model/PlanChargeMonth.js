Ext.define('oa.model.PlanChargeMonth', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'company',
    'departmentId',
    'projectId',
    'subjectId',
    'chargeName',
    'yearAmount',
    'paiedAmount',
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