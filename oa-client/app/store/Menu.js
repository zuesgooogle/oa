Ext.define('oa.store.Menu', {
    extend: 'Ext.data.TreeStore',

    alias: 'store.menu',

    root: {
        expanded: true,
        children: [
            {text: '组织管理', expanded: true, children: [
                {text: '用户管理', action: 'userList', leaf: true},
                {text: '部门管理', action: 'departmentList', leaf: true},
                {text: '权限分配', leaf: true}
            ]},
            {text: '台账管理', expanded: true, children: [
                {text: '成本台账', leaf: true},
                {text: '计划台账', leaf: true}
            ]}
        ]
    }
});