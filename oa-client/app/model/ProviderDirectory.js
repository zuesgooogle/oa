Ext.define('oa.model.ProviderDirectory', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    },
    'name',
    'type',
    'content',
    'linkman',
    'phone',
    'address',
    'postcode',
    'assessTable',
    'abilityTable',
    'provideTable',
    'remark',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }]
});