//
//  PersonController.swift
//  PairRandomizer
//
//  Created by Collin Cannavo on 7/20/17.
//  Copyright © 2017 Collin Cannavo. All rights reserved.
//

import Foundation

class PersonController {
    
    private let personKey = "person"
    static let shared = PersonController()
    var people: [Person] = []
    
    init() {
        loadFromPersistentStore()
    }
    
    //MARK: - Lifecycle Functions
    
    func add(personNamed name: String) {
        let person = Person(name: name)
        people.append(person)
        saveToPersistentStore()
    }
    
    func saveToPersistentStore() {
        var peopleDictionary: [[String: Any]] = []
        for person in people {
            let dictionary = person.dictionaryRepresentation
            peopleDictionary.append(dictionary)
        }
        
        UserDefaults.standard.set(peopleDictionary, forKey: personKey)
    }
    
    func loadFromPersistentStore() {
        if let peopleDictionary = UserDefaults.standard.object(forKey: personKey) as? [[String : Any]] {
            var people: [Person] = []
            
            for person in peopleDictionary {
                if let person = Person(dictionary: person) {
                    people.append(person)
                }
            }
            self.people = people
        }
    }
}
