Ext.define('oa.model.DevelopSecond', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    },
    'landId',
    'taskTypeId',
    'taskNameId',
    
    { name: 'planStartTime',  type: 'date',  dateFormat: 'Y-m-d H:i:s' },
    { name: 'planEndTime',  type: 'date',  dateFormat: 'Y-m-d H:i:s' },
    { name: 'actualStartTime',  type: 'date',  dateFormat: 'Y-m-d H:i:s' },
    { name: 'actualEndTime',  type: 'date',  dateFormat: 'Y-m-d H:i:s' },

    'organizer',
    'departmentId',
    'userId',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }]
});