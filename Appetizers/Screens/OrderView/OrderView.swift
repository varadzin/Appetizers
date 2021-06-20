//
//  OrderView.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 22/05/2021.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(MockData.orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: { indexSet in
                        orderItems.remove(atOffsets: indexSet)
                    })
                }
                .listStyle(InsetGroupedListStyle())
                
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "Price - Place Order")
                }
                .padding(.bottom, 25)
            }
            .navigationTitle("Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
