//
//  Contact.swift
//  ContactList2
//
//  Created by Elenka on 19.07.2022.
//
struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPerson() -> [Person] {
        var person: [Person] = []
        
        for name in DataStore().firstName {
            person.append(
                Person(
                    firstName: name,
                    secondName: DataStore().secondName.randomElement() ?? "no data",
                    email: DataStore().email.randomElement() ?? " ",
                    phoneNumber: DataStore().phoneNumber.randomElement() ?? " "
                )
            )
        }
        return person
    }
    
}
