Ext.define('oa.model.TaskClassifi', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    },
    'parentId',
    {
        name: 'text',
        mapping: 'name'
    },
    {
        name: 'createTime',
        convert: function (v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});