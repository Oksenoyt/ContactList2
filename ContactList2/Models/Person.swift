//
//  Contact.swift
//  ContactList2
//
//  Created by Elenka on 19.07.2022.
//

import Foundation

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.firstNames.shuffled()
        let surnames = DataStore.shared.secondNames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        for index  in 0..<iterationCount {
            persons.append(
                Person(
                    firstName: names[index],
                    secondName: surnames[index],
                    email: emails[index],
                    phoneNumber: phoneNumbers[index]
                )
            )
        }
        return persons
    }
}
