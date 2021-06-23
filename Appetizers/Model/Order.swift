//
//  Order.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 23/06/2021.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    
}
