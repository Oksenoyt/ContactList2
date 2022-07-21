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
        let data = DataStore()
        
        data.firstNames.shuffle()
        data.secondNames.shuffle()
        data.emails.shuffle()
        data.phoneNumbers.shuffle()
        
        for name  in data.firstNames {
            let index = data.firstNames.firstIndex(of: name)!
            
            person.append(
                Person(
                    firstName: name,
                    secondName: data.secondNames[index],
                    email: data.emails[index],
                    phoneNumber: data.phoneNumbers[index]
                )
            )
        }
        return person
    }
    
}
