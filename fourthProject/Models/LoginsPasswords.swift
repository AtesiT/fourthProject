struct Users {
    
}

struct Admins {
    let user: String
    let password: String
}

let firstUser = Admins(user: "User", password: "12345")
let admin = Admins(user: "admin", password: "12345")
