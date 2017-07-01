Ext.define('Utils', {
    singleton: true,

    company: [
        { id: 1, name: '置地公司' },
        { id: 2, name: '置业公司' }
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

    rendererCompany: function(id) {
        var name = 'unknow';
        Ext.each(this.company, function (record) {
            if (record.id === id) {
                name = record.name;
                return false;
            }
        });
        return name;
    }
});