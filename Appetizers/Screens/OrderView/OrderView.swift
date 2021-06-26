//
//  OrderView.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
            
                List {
                    ForEach(order.items) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "Price - Place Order")
                }
                .padding(.bottom, 25)
            }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no Order")
                }
            }
            
            .navigationTitle("Orders")
        }
    }
    
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
