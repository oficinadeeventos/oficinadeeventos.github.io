import siteoficinadeeventos.SecUserSecRole
import siteoficinadeeventos.SecUser
import siteoficinadeeventos.SecRole

class BootStrap {

    def init = { servletContext ->
        String.metaClass.short {int cut ->
            delegate.size() <= cut ? delegate : delegate.substring(0, cut - 1) + "..."
        }

        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }
    }
    def destroy = {
    }
}
