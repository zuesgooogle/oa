Ext.define('oa.model.CloudStorage', {
    extend: 'Ext.data.Model',

    fields: [{
        name: 'id',
        type: 'int'
    }, 
    'fileName',
    'fileUrl',
    'fileType',
    'size',
    'sumary',
    'directoryId',
    'contentType',
    'remark',
    {
        name: 'createTime',
        convert: function(v, record) {
            return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
        }
    }],

    validators: {}
});