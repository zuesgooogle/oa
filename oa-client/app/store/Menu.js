Ext.define('oa.store.Menu', {
    extend: 'Ext.data.TreeStore',

    alias: 'store.menu',

    root: {
        expanded: true,
        children: [
            {text: '组织管理', expanded: true, iconCls: 'x-fa fa-user-plus', children: [
                {text: '用户管理', action: 'userList', iconCls: 'x-fa fa-user', leaf: true},
                {text: '部门管理', action: 'departmentTree', iconCls: 'x-fa fa-group', leaf: true},
                {text: '职位管理', iconCls: 'x-fa fa-user-secret', leaf: true}
            ]},
            {text: '经营管理', expanded: true, children: [
                {text: '成本台账', leaf: true},
                {text: '收费台账', leaf: true},
                {text: '合同台账', leaf: true}
            ]},
            {text: '财务管理', expanded: true, children: [
                {text: '资金计划', leaf: true},
                {text: '融资管理', leaf: true}
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
                {text: '成本科目', iconCls: 'x-fa fa-cubes', action: 'costsubjectTree', leaf: true}
            ]}
        ]
    }
});