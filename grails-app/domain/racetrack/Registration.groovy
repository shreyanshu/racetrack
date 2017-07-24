package racetrack

class Registration {
    Race race
    String name
    Date dateOfBirth
    String gender = 'F'
    String postalAddress
    String emailAddress
    Date createdAt = new Date()
    static belongsTo = Race
    static optionals = ["postalAddress" ]

    String toString(){"${this.name}:${this.emailAddress}"}

    static constraints = {
        name(maxLength:50, blank: false)
        dateOfBirth(nullable: false)
        gender(inList: ["M", "F"])
        postalAddress(maxLength: 50, email: true)
        race(nullable: false)
    }
}
