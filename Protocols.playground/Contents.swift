//: Playground - noun: a place where people can play

class Student {
    
    var firstName : String
    var lastName : String
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

class Cow {
    var name : String?
    
}

struct Grass {
    var type : String
}


