//
//  DSG.swift
//  EmptyMind
//
//  Created by Joshua Sharp on 8/19/19.
//  Copyright © 2019 Joshua Sharp. All rights reserved.
//

import Foundation

class Person: Codable {
    var id: UUID
    var nameLast: String
    var nameFirst: String
    var nameMiddle: [String]?
    var DOB: Date
    
    init (_ id: UUID = UUID(), _ nameLast: String, _ nameFirst: String, _ nameMiddle:[String]? = nil, _ DOB:Date) {
        self.id = id
        self.nameLast = nameLast
        self.nameFirst = nameFirst
        self.DOB = DOB
    }
}

class Accountability: Codable {
    var id: UUID
    var name: String
    var description: String
    
    init (_ id: UUID = UUID(), _ name: String, _ description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
}

class Role: Codable {
    var id: UUID
    var name: String
    var accountabilities: [Accountability]? = nil
    var assigned: [Person]? = nil
    
    init (_ name: String, _ id: UUID = UUID ()) {
        self.id = id
        self.name = name
    }
}

class Domain: Codable {
    var id: UUID
    var name: String
    var description: String
    
    init (_ name: String, _ description: String, _ id: UUID = UUID()) {
        self.name = name
        self.description = description
        self.id = id
    }
}

class Circle: Codable {
    var id: UUID
    var name: String
    var parent: Circle? = nil
    var roles: [Role]? = nil
    var lead: Person? = nil
    var facilitator: Person? = nil
    var secretary: Person? = nil
    
    init (_ name: String, _ parent: Circle, _ id: UUID = UUID()) {
        self.id = id
        self.name = name
        self.parent = parent
    }
    
    
    
}
