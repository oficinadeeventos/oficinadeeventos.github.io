dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "cj203019"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {

    development {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/site"
        }
    }
    test {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:mysql://localhost:3306/site_testes"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/site"
        }
        properties {
            maxActive = -1
            minEvictableIdleTimeMillis = 1800000
            timeBetweenEvictionRunsMillis = 1800000
            numTestsPerEvictionRun = 3
            testOnBorrow = true
            testWhileIdle = true
            testOnReturn = true
            validationQuery = "SELECT 1"
        }
    }
}
