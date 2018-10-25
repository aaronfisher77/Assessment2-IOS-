//
//  PersonClass.swift
//  Assessment2(IOS)
//
//  Created by Aaron Fisher on 10/25/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import Foundation

class Person {

    var email: String
    var firstName: String
    var lastName: String
    
    init(email: String, firstName: String, lastName: String) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
    }
}
