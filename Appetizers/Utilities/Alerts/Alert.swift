//
//  Alert.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 24/05/2021.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
 }

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text( "Invalid Data"), dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text( "Invalid Data"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text( "Invalid Data"), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text( "Invalid Data"), dismissButton: .default(Text("Ok")))

static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text( "Invalid Form"), dismissButton: .default(Text("Ok")))

static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text( "Invalid Data"), dismissButton: .default(Text("Ok")))

static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text( "Your Infos are saved"), dismissButton: .default(Text("Ok")))

    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text( "There was error by saving or retrieving your data"), dismissButton: .default(Text("Ok")))
    
}
