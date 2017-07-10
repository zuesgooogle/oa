Ext.define('oa.store.TaskClassifiTree', {
    extend: 'Ext.data.TreeStore',

    id: 'store.taskClassifiTree',
    alias: 'store.taskClassifiTree',

    storeId: 'store.taskClassifiTree',

    model: 'oa.model.TaskClassifi',

    root: {
        id: 0,
        text: '任务分类',
        expanded: true
    },

    autoLoad: true,
    proxy: {

        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'taskclassifi/list',
        reader: {
            type: 'json',
            rootProperty: 'data'
        }
    }
});