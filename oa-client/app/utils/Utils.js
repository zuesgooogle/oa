Ext.define('Utils', {
    singleton: true,

    company: [
        { id: 1, name: '置地公司' },
        { id: 2, name: '置业公司' }
    ],

    positionLevel: [
        { id: 1, name: "公司领导" },
        { id: 2, name: "部门经理" },
        { id: 3, name: "员工" }
    ],

    isCompany: function (name) {
        var has = false;
        Ext.each(this.company, function (record) {
            if (record.name === name) {
                has = true;
                return false;
            }
        });
        return has;
    },

    rendererCompany: function (id) {
        var name = 'unknow';
        Ext.each(this.company, function (record) {
            if (record.id === id) {
                name = record.name;
                return false; 
            }
        });
        return name;
    },

    rendererPositionLevel: function (level) {
        var name = 'unknow';
        Ext.each(this.positionLevel, function (record) {
            if (record.id === level) {
                name = record.name;
                return false;
            }
        });
        return name;
    },

    rendererNetworkSize: function(value) {
        var size = parseInt(value);
        if (size == 0) {
            return '--';
        }
        if (size < 1024) {
            return size + 'Byte';
        } else if (1024 < size && 1024 * 1024) {
            return parseInt(size / 1024) + ' Mb'; 
        } else if (1024 * 1024 < size && 1024 * 1024 * 1024) {
            return parseInt(size / (1024 * 1024)) + ' Gb'; 
        } else {
            return parseInt(size / (1024 * 1024 * 1024)) + ' Tb';
        }
    }
});