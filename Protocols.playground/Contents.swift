//: Playground - noun: a place where people can play
import Foundation

protocol Priority {
    var order : Int { get }
}

protocol EntryName : Priority {
    
    var label : String { get }
    mutating func printLabel()
    
    init(name: String)
}

class Farmer : EntryName {
    
    func printLabel() {
        firstName += " newName"
        print(firstName + " farmer")
    }
    
    required init(name: String) {
        self.firstName = name
        self.lastName = "Shmobs"
    }
    
    var firstName : String
    var lastName : String
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var label: String {
        return fullName
    }
    
    let order = 1
    
}

class Animal {
    
}

class Cow : EntryName {
    
    func printLabel() {
        print("Cow label " + label)
    }
    
    required init(name: String) {
        self.name = name
    }
    
    var name : String?
    
    var label: String {
        return name ?? "a cow"
    }
    
    let order = 2
    
}

struct Grass : EntryName {
    
    func printLabel() {
        print("This is grass")
    }
    
    init(name: String) {
        type = name
    }
    
    init(type: String) {
        self.type = type
    }
    
    var type : String
    var label: String {
        return "Grass: " + type
    }
    
    let order = 3
}

let farmer1 = Farmer(firstName: "Bob", lastName: "Shmob")
let farmer2 = Farmer(firstName: "Bill", lastName: "Shmill")
let farmer3 = Farmer(firstName: "Brian", lastName: "Shmian")

let cow1 = Cow(name: "Burenka")
let cow2 = Cow(name: "Maria")

let grass1 = Grass(name: "Bermuda")
let grass2 = Grass(name: "St. Augustine")



/*
for value in array {
    
//    if let grass = value as? Grass {
//        print(grass.type)
//    } else if let farmer = value as? farmer {
//        print(farmer.fullName)
//    } else if let cow = value as? Cow {
//        print(cow.name ?? "a cow")
//    }
    
    switch value {
    case let grass as Grass: print(grass.type)
    case let farmer as farmer: print(farmer.fullName)
    case let cow as Cow: print(cow.name ?? "just a cow")
    default: break
    }
}
*/

var array : [EntryName] =
    [cow1, farmer1, grass2, cow2, farmer3, grass1, farmer2]

func printFarm(inout array: [EntryName]) {

    array.sortInPlace({a, b in
        if a.order == b.order {
            return a.label.lowercaseString < b.label.lowercaseString
        } else {
            return a.order < b.order
        }
    })
    
    for value in array {
        print(value.label)
    }
}



printFarm(&array)

print("-----------")

grass2.printLabel()
farmer1.printLabel()
cow2.printLabel()

farmer1.fullName

var someAnimal : EntryName = Cow(name: "someAnimal")

Int.max
Int.min
