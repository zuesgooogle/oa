Ext.define('oa.store.Menu', {
    extend: 'Ext.data.TreeStore',

    alias: 'store.menu',

    root: {
        expanded: true,
        children: [
            {
                text: '经营管理', expanded: true, iconCls: 'x-fa fa-cart-plus', children: [
                    { text: '成本台账(置地)', action: 'zhidiLedgerCostList', iconCls: 'fa-hourglass', leaf: true },
                    { text: '成本台账(置业)', action: 'zhiyeLedgerCostList', iconCls: 'fa-hourglass-end', leaf: true },
                    { text: '合同台账', leaf: true },
                    { text: '行政收费台账', leaf: true },
                    { text: '费用报销台账', leaf: true }
                ]
            },
            {
                text: '财务管理', expanded: true, iconCls: 'x-fa fa-bank', children: [
                    {
                        text: '资金支出', expanded: false, iconCls: 'x-fa fa-share', children: [
                            { text: '月度', action: 'planMoneyOutMonthList', iconCls: 'x-fa fa-calendar-o', leaf: true },
                            { text: '年度', action: 'planMoneyOutYearList', iconCls: 'x-fa fa-calendar', leaf: true }
                        ]
                    }, {
                        text: '收入计划', expanded: false, iconCls: 'x-fa fa-reply', children: [
                            { text: '月度', action: 'planMoneyInMonthList', iconCls: 'x-fa fa-calendar-o', leaf: true },
                            { text: '年度', action: 'planMoneyInYearList', iconCls: 'x-fa fa-calendar', leaf: true }
                        ]
                    },
                    {
                        text: '费用计划', iconCls: 'x-fa fa-rmb', children: [
                            { text: '月度', action: 'planChargeMonthList', iconCls: 'x-fa fa-calendar-o', leaf: true },
                            { text: '年度', action: 'planChargeYearList', iconCls: 'x-fa fa-calendar', leaf: true }
                        ]
                    },
                    {
                        text: '购置计划', iconCls: 'x-fa fa-shopping-cart', children: [
                            { text: '月度', action: 'planAssertMonthList', iconCls: 'x-fa fa-calendar-o', leaf: true },
                            { text: '年度', action: 'planAssertYearList', iconCls: 'x-fa fa-calendar', leaf: true }
                        ]
                    },
                    { text: '融资进度管理', action: 'financingList', iconCls: 'fa-random', leaf: true }
                ]
            },
            {
                text: '开发进度管理', expanded: true, iconCls: 'fa-connectdevelop', children: [
                    { text: '土地开发', action: 'developLandList', iconCls: 'fa-anchor', leaf: true },
                    { text: '二级开发', action: 'developSecondList', iconCls: 'fa-dropbox', leaf: true }
                ]
            },
            {
                text: '组织管理', expanded: true, iconCls: 'x-fa fa-user-plus', children: [
                    { text: '用户管理', action: 'userList', iconCls: 'x-fa fa-user', leaf: true },
                    { text: '部门管理', action: 'departmentList', iconCls: 'x-fa fa-group', leaf: true },
                    { text: '职位管理', action: 'positionList', iconCls: 'x-fa fa-user-secret', leaf: true }
                ]
            },
            {
                text: '审批管理', expanded: false, iconCls: 'x-fa fa-stack-exchange', children: [
                    { text: '发起审批', action: 'approvalAuditTree', iconCls: 'fa-tags', leaf: true },
                    { text: '审批管理', action: 'workflowList', iconCls: 'fa-tasks', leaf: true }
                ]
            },
            {
                text: '系统设置', expanded: true, iconCls: 'fa-paper-plane', children: [
                    { text: '成本科目', iconCls: 'x-fa fa-cubes', action: 'costsubjectTree', leaf: true },
                    { text: '项目管理', iconCls: 'x-fa fa-delicious', action: 'projectList', leaf: true },
                    { text: '片区管理', iconCls: 'x-fa fa-area-chart', action: 'areaList', leaf: true },
                    { text: '标段管理', iconCls: 'x-fa fa-map-pin', action: 'sectionList', leaf: true },
                    { text: '地块管理', iconCls: 'x-fa fa-anchor', action: 'landList', leaf: true },
                    { text: '银行管理', iconCls: 'x-fa fa-bank', action: 'bankList', leaf: true },
                    { text: '任务分类', iconCls: 'x-fa fa-list', action: 'taskClassifiTree', leaf: true }
                ]
            }
        ]
    }
});