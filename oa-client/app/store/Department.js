Ext.define('oa.store.Department', {
    extend: 'Ext.data.Store',

    id: 'store.department',
    alias: 'store.department',

    model: 'oa.model.Department',

    proxy: {
        
        type: 'ajax',
        url: oa.config.Config.BASE_URL + 'department/list',
        reader: {
            type: 'json',
            rootProperty: 'data',
            totalProperty: 'totalCount'
        }
    }
});