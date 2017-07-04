Ext.define('oa.model.AdministrativeLedger', {
    extend: 'Ext.data.Model',

    fields: [
        { name: 'id', type: 'int' },
        'company',
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
        { name: 'createTime', type: 'date', dateFormat: 'Y-m-d H:i:s' }
    ]
});