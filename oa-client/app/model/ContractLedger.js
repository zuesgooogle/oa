Ext.define('oa.model.ContractLedger', {
    extend: 'Ext.data.Model',

    fields: [
        { name: 'id', type: 'int' },
        'contractFile',
        'contractState',
        'company',
        'areaLandId',
        'subjectId',
        'incomeType',
        'developType',
        'contractName',
        'contractSerial',
        'contractAmount',
        'contractAmountState',
        'contractPayCondition',
        'signatory',
        { name: 'signTime', type: 'date', dateFormat: 'Y-m-d H:i:s' },
        'timelimit',
        'linkman',
        'phone',
        'bidType', 
        'relateApproveFile', 
        'solutionFile', 
        'budgetApproveFile', 
        'record', 
        'relateDepartment',
        'financeRegister', 
        'operateRegister', 
        'performanceAmount', 
        'settleAmount', 
        'premiumAmount', 
        'paidAmount', 
        'performanceEvaluate', 
        'paidPercent',
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