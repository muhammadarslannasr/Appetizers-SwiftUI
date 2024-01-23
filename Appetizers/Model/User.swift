//
//  User.swift
//  Appetizers
//
//  Created by Aaqib Raza on 23/01/2024.
//

import Foundation

struct User: Codable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
