//
//  PersonModel.swift
//  Homework_tableView
//
//  Created by Vladimir Beliakov on 08.09.2022.
//

import Foundation

struct PersonModel {
    
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        return "\(name) \(surname)"
    }
    
    static func getContactList() -> [PersonModel] {
        
        var persons: [PersonModel] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        
        for index in 0..<names.count {
            let person = PersonModel(name: names[index],
                                     surname: surnames[index],
                                     email: emails[index],
                                     phoneNumber: phones[index])
            persons.append(person)
        }
        return persons
    }
    
}
