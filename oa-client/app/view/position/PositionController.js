Ext.define('oa.view.position.PositionController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.position',
    requires: ['oa.config.Config'],

    store: ['position'],


    init: function () {
    },

    addPosition: function (sender) {
        var info = Ext.getCmp('positionInfo');
        if (info == null) {
            info = Ext.create('positionInfo');
        }
        info.show();
    },

    viewPosition: function(sender) {
        var gird = sender.up('positionList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('positionInfo');
        if (info == null) {
            info = Ext.create('positionInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deletePosition: function (sender) {
        var gird = sender.up('positionList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除职位", "您确认要删除职位？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'position/delete',
                    method: 'POST',
                    params: {
                        id: record.data.id
                    },
                    success: function (response, opts) {
                        gird.store.remove(record);
                    },

                    failure: function (response, opts) {
                        Ext.Msg.alert('Failed', action.result.msg);
                    }
                });
            }
        });
    },

    updatePosition: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var positionList = Ext.getCmp('positionList');
                    var store = positionList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    positionList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function(form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            })
        }
    }
});