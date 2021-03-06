dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
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
//            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
//            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"

            boolean pooling = true
            dbCreate = "update"
            url = "jdbc:mysql://localhost/racetrack_dev"
            driverClassName = "com.mysql.jdbc.Driver"
            username = "root"
            password = "root"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            boolean pooling = true
            String dbCreate = "update"
            String url = "jdbc:mysql://localhost/racetrack_prod"
            String driverClassName = "com.mysql.jdbc.Driver"
            String username = "root"
            String password = "root"

        }
    }
}
