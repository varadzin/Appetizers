//
//  AccountView.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI

struct AccountView: View {
    
 
    @StateObject var viewModel = AccoutViewModel()
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.firstName)
                        .disableAutocorrection(true)
                        .autocapitalization(.words)
                    TextField("Last Name", text: $viewModel.lastName)
                        .disableAutocorrection(true)
                        .autocapitalization(.words)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                }
            
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                      
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            
    }
}
