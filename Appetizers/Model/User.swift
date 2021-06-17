//
//  User.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 17/06/2021.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false

    
}
