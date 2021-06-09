//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
   @State private var isShowingDetail = false
    @State private var selectedAppetizer : Appetizer?
    
    
    var body: some View {
        ZStack {
            
        
        NavigationView {
            List(viewModel.appetizers) { appetizer in
            AppetizerListCell(appetizer: appetizer)
                .onTapGesture {
                    selectedAppetizer = appetizer
                    isShowingDetail = true
                }
                
            }.navigationTitle("Appetizers")
            .disabled(isShowingDetail)
            
        }.onAppear {
            viewModel.getAppetizers()
            
        }
        .blur(radius: isShowingDetail ? 20 : 0) //ak je hodnota premennej isShowingDetail true tak da BLUR 20 ak  false tak BLUR je 0
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!,
                                    isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadinView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
        }
    
    
   
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
