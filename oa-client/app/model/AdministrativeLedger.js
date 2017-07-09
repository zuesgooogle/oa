Ext.define('oa.model.AdministrativeLedger', {
    extend: 'Ext.data.Model',

    fields: [
        { name: 'id', type: 'int' },
        'company',
        'areaLandId',
        'subjectId',
        'name',
        'content',
        'payableAmount',
        'payCondition',
        'signatory',
        { name: 'signTime', type: 'date', dateFormat: 'Y-m-d H:i:s' },
        'linkman',
        'phone',
        'payTotal',
        'departmentId',
        'userId',
        'fileBoxId',
        'fileId',
        'remark',
        {
            name: 'createTime',
            convert: function(v, record) {
                return Ext.Date.format(new Date(v), 'Y-m-d H:i:s');
            }
        }
    ]
});