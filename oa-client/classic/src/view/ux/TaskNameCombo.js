Ext.define('oa.ux.TaskNameCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.taskNameCombo',

    store: {
        type: 'taskClassifi'
    },

    fieldLabel: '任务名称',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id',

    listeners: {
        afterrender: function() {
            var me = this;
                taskNameId = me.getValue();
                taskTypeId = Ext.getCmp('taskTypeId');

            if (taskTypeId.getValue() !== null) {
                me.store.proxy.extraParams = {node: taskTypeId.getValue()};
                me.store.load(function() {
                    me.setValue(taskNameId);
                });
            }
        }
    }
});