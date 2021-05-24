//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
   
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
            AppetizerListCell(appetizer: appetizer)
                
            }.navigationTitle("Appetizers")
            
        }.onAppear {
            viewModel.getAppetizers() }
        }
    
    
   
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
