Ext.define('oa.model.User', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    },
    'username',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }]
});