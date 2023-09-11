//
//  Person.swift
//  Homework 11
//
//  Created by Владислав Клунный on 31.08.2023.
//

struct Person {
 
    let name: String
    let surname: String
    let email: String
    let phoneNumbers: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let dataStore = DataStore()
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phonesNumbers = dataStore.phoneNumbers.shuffled()
        
        let iteratonCount = min(
            names.count,
            surnames.count,
            emails.count,
            phonesNumbers.count
        )
        
        for value in 0..<iteratonCount {
            let person = Person(
                name: names[value],
                surname: surnames[value],
                email: emails[value],
                phoneNumbers: phonesNumbers[value]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
