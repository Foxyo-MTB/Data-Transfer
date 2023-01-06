//
//  DataManager.swift
//  Homework_tableView
//
//  Created by Vladimir Beliakov on 08.09.2022.
//

import Foundation

struct DataManager {
    
    static let shared = DataManager()
    
    let names = [ "John",
                 "Tim",
                 "Craig"
    ]
    
    let surnames = [ "Appleseed",
                    "Cook",
                    "Federighi"
    ]
    
    let emails = [ "first_email@icloud.com",
                  "second_email@icloud.com",
                  "third_email@icloud.com"
    ]
    
    let phoneNumbers = [ "1234567890",
                        "0987654321",
                        "1029384756"
    ]

}
