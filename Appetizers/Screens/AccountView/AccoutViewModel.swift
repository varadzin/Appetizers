//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 13/06/2021.
//

import SwiftUI

final class AccoutViewModel: ObservableObject {

@Published var firstName = ""
@Published var lastName = ""
@Published var email = ""
@Published var birthdate = Date()
@Published var extraNapkins = false
@Published var frequentRefills = false

}
