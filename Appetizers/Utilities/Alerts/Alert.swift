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
}
