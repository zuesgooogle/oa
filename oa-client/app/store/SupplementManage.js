Ext.define('oa.store.SupplementManage', {
    extend: 'Ext.data.Store',

    id: 'store.supplementManage',
    alias: 'store.supplementManage',

    model: 'oa.model.SupplementManage',
    remoteFilter: true,
    proxy: {
        type: 'ajax',
        url: oa.config.Config.BASE_URL + '/supplement/manage/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});