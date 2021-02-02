function fn() {
    var env = karate.env;
    if (!env) {
        env = 'dev';
    }

    var ConfigProvider = Java.type('org.eclipse.microprofile.config.ConfigProvider');
    var String = Java.type('java.lang.String');
    var quarkusConfig = ConfigProvider.getConfig();

    var baseUrl = 'http://localhost:8081';
    var xiboHost = quarkusConfig.getValue('webclient.xibo.host', String.class);
    var xiboClientId = quarkusConfig.getValue('webclient.xibo.client-id', String.class);
    var xiboClientSecret = quarkusConfig.getValue('webclient.xibo.client-secret', String.class);

    var config = {
        baseUrl: baseUrl,
        xiboHost: xiboHost,
        xiboClientId: xiboClientId,
        xiboClientSecret: xiboClientSecret
    };

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    return config;
}
