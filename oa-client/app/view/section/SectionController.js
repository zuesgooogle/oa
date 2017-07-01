Ext.define('oa.view.section.SectionController', {
    extend: 'Ext.app.ViewController',

    alias: 'controller.section',
    requires: ['oa.config.Config'],

    store: ['section'],


    init: function () {
    },

    addSection: function (sender) {
        var info = Ext.getCmp('sectionInfo');
        if (info == null) {
            info = Ext.create('sectionInfo');
        }
        info.show();
    },

    viewSection: function(sender) {
        var gird = sender.up('sectionList');
        var record = gird.getSelectionModel().getSelection()[0];

        var info = Ext.getCmp('sectionInfo');
        if (info == null) {
            info = Ext.create('sectionInfo');
        }
        info.down('form').loadRecord(record);
        info.show();
    },

    deleteSection: function (sender) {
        var gird = sender.up('sectionList');
        var record = gird.getSelectionModel().getSelection()[0];

        Ext.MessageBox.confirm("删除标段", "您确认要删除标段？", function (btn) {
            if (btn == 'yes') {
                Ext.Ajax.request({
                    url: oa.config.Config.BASE_URL + 'section/delete',
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

    updateSection: function (sender) {
        var form = sender.up('form').getForm();
        if (form.isValid()) {
            form.submit({
                success: function(form, action) {
                    var data = action.result.data;

                    var sectionList = Ext.getCmp('sectionList');
                    var store = sectionList.store;
                    var record = store.getById(data.id);
                    if (record != null) {
                        record.data = data;
                    } else {
                        store.add(data);
                    }

                    // refresh grid view
                    sectionList.getView().refresh();
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