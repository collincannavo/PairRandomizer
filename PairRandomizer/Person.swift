//
//  Person.swift
//  PairRandomizer
//
//  Created by Collin Cannavo on 7/20/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import Foundation

class Person: Equatable {
    
    private let nameKey = "name"
    
    var name: String?
    
    init(name: String) {
        self.name = name
    }
    
    init?(dictionary: [String: Any]) {
        
        if let name = dictionary[nameKey] as? String {
            self.name = name
        } else {
            return nil
        }
    }

    var dictionaryRepresentation: [String : Any] {
        let dictionary: [String :Any] = [nameKey : name]
        
        return dictionary
    }
    
}

func ==(lhs: Person, rhs: Person) -> Bool {
    if lhs.name != rhs.name { return false}
    return true
}

