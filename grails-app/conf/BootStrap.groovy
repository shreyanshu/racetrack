import racetrack.User

class BootStrap {

    def init = { servletContext ->
        final String BACKUP_ADMIN = 'admin123'
        if (!User.findByUserId(BACKUP_ADMIN)) {
            new User(userId: BACKUP_ADMIN,password: 'password').save()
            println "initializing data..."
        }
    }
    def destroy = {
    }


}
