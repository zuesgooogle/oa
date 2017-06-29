Ext.define('oa.view.user.ZhidiLedgerCostController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.zhidiLedgerCost',

    stores: ['ZhidiLedgerCost'],

    addZhidiLedgerCost: function(sender) {
        var info = Ext.getCmp('zhidiLedgerCostInfo');
        if (info == null) {
            info = Ext.create('zhidiLedgerCostInfo');
        }
        info.show();
    },

    viewZhidiLedgerCost: function(sender) {

    }
});