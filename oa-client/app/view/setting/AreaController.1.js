Ext.define('oa.view.setting.AreaController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.area',

    init: function () {
    },

    addArea: function (sender) {
        var info = Ext.getCmp('areaInfo');
        if (info == null) {
            info = Ext.create('areaInfo');
        }
        info.show();
    },

    viewArea: function (sender) {
        var gird = sender.up('areaList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('areaInfo');
        if (info == null) {
            info = Ext.create('areaInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteArea: function (sender) {
        var gird = sender.up('areaList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除提示", "您确认要删除片区？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'area/delete',
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

    updateArea: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function (form, action) {
                    var data = action.result.data;

                    var AreaList = Ext.getCmp('areaList');
                    var store = AreaList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    AreaList.getView().refresh();
                    // window close
                    sender.up("window").close();
                },
                failure: function (form, action) {
                    Ext.Msg.alert('Failed', action.result.msg);
                }
            })
        }
    }
});