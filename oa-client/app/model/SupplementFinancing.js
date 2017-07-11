Ext.define('oa.model.SupplementFinancing', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'year',
    'month',
    'type',
    'asserts',
    'debt',
    'debtRatio',
    'equity',
    'equityRatio',
    'maintenance',
    'profit',
    'taking',
    'borrowAmount',
    'otherAmount',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});