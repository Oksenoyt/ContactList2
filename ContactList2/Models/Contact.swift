//
//  Contact.swift
//  ContactList2
//
//  Created by Elenka on 19.07.2022.
//

import Darwin

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    let dataStore = DataStore()
    
    static func getPerson() -> [Person] {
        [
//            Person(
//                firstName: dataStore.firstName.randomElement() ?? "Имя отсутствует",
//                secondName: dataStore.secondName.randomElement() ?? "Фамилия отсутствует",
//                email: dataStore.email.randomElement() ?? " ",
//                phoneNumber: dataStore.phoneNumber.randomElement() ?? " "
//            ),
            
            Person (firstName: "1qwe", secondName: "asd", email: "`zxc", phoneNumber: "123123"),
            Person (firstName: "2qwe", secondName: "asd", email: "`zxc", phoneNumber: "123123"),
            Person (firstName: "3qwe", secondName: "asd", email: "`zxc", phoneNumber: "123123"),
            Person (firstName: "4qwe", secondName: "asd", email: "`zxc", phoneNumber: "123123"),
            Person (firstName: "5qwe", secondName: "asd", email: "`zxc", phoneNumber: "123123"),
            Person (firstName: "6qwe", secondName: "asd", email: "`zxc", phoneNumber: "123123"),
        ]
    }
}

class DataStore {
    let firstName = [
        "Emily",
        "Taylor",
        "Kaitlyn",
        "Brianna",
        "Sarah",
        "Alexis",
        "Alissa",
        "Ashley"
    ]
    let secondName = [
        "Abramson",
        "James",
        "Aldridge",
        "Jeff",
        "Hoggarth",
        "Babcock",
        "Leman",
        "Mercer"
    ]
    let email = [
        "1@gmail.com",
        "2@gmail.com",
        "3@gmail.com",
        "4@gmail.com",
        "5@gmail.com",
        "6@gmail.com",
        "7@gmail.com",
        "8@gmail.com"
    ]
    let phoneNumber = [
        "+79139219351",
        "+79132319352",
        "+79139459353",
        "+79133519354",
        "+79135319355",
        "+79131219356",
        "+73239219357",
        "+74339219358"
    ]
}
