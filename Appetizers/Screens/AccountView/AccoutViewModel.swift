//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 13/06/2021.
//

import SwiftUI

final class AccoutViewModel: ObservableObject {
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
        
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        print("Changes have been saved")
    }
    
    
    
}
