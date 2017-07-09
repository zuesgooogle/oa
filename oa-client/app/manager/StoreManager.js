Ext.define('StoreManager', {
    singleton: true,

    syncLoadStore: function(alias, callback) {
        var store = Ext.getCmp(alias);
        if (store == null) {
            store = Ext.createByAlias(alias);

            // 同步加载 store
            store.proxy.async = false;
            store.load({callback: callback});
        }
    }
});