Ext.define('oa.store.Menu', {
    extend: 'Ext.data.TreeStore',

    alias: 'store.menu',

    root: {
        expanded: true,
        children: [
            {text: '组织管理', expanded: true, iconCls: 'x-fa fa-user-plus', children: [
                {text: '用户管理', action: 'userList', iconCls: 'x-fa fa-user', leaf: true},
                {text: '部门管理', action: 'departmentList', iconCls: 'x-fa fa-group', leaf: true},
                {text: '职位管理', action: 'positionList', iconCls: 'x-fa fa-user-secret', leaf: true}
            ]},
            {text: '经营管理', expanded: true, iconCls: 'x-fa fa-cart-plus', children: [
                {text: '成本台账(置地)', action: 'zhidiLedgerCostList', iconCls: 'fa-hourglass', leaf: true},
                {text: '成本台账(置业)', action: 'zhiyeLedgerCostList', iconCls: 'fa-hourglass-end', leaf: true},
                {text: '合同台账', leaf: true},
                {text: '行政收费台账', leaf: true},
                {text: '费用报销台账', leaf: true}
            ]},
            {text: '财务管理', expanded: true, iconCls: 'x-fa fa-bank', children: [
                {text: '资金计划', iconCls: 'x-fa fa-money', leaf: true},
                {text: '融资管理', iconCls: 'fa-random', leaf: true}
            ]},
            {text: '工程管理', expanded: false, children: [
                {text: '土地开发管理', leaf: true},
                {text: '二级开发', leaf: true}
            ]},
            {text: '前期管理', expanded: false, children: [
                {text: '土地开发管理', leaf: true},
                {text: '二级开发', leaf: true}
            ]},
            {text: '系统设置', expanded: true, iconCls: 'fa-paper-plane', children: [
                {text: '成本科目', iconCls: 'x-fa fa-cubes', action: 'costsubjectTree', leaf: true},
                {text: '项目管理', iconCls: 'x-fa fa-delicious', action: 'projectList', leaf: true},
                {text: '标段管理', iconCls: 'x-fa fa-map-pin', action: 'sectionList', leaf: true}
            ]}
        ]
    }
});