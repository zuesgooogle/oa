Ext.define('oa.ux.TaskTypeCombo', {
    extend: 'Ext.form.ComboBox',

    alias: 'widget.taskTypeCombo',

    store: {
        type: 'taskClassifi',
        proxy: {
            extraParams: {node: 0}
        }
    },

    fieldLabel: '任务类型',
    queryMode: 'local',
    editable: false,      //是否允许输入   
    forceSelection: true, //必须选择一个选项   
    displayField: 'name',
    valueField: 'id',
    listeners: {
        change: function(combo, newValue, oldValue){
            if(newValue != oldValue){
                var taskNameCombo = Ext.getCmp("taskNameId");
                if (taskNameCombo !== null) {
                    taskNameCombo.clearValue();
                
                    taskNameStroe = taskNameCombo.getStore();
                    taskNameStroe.proxy.extraParams = {node: newValue};
                    taskNameStroe.load();
                }
            }
        }
    }
});