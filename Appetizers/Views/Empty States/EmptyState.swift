//
//  Empty State.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 20/06/2021.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
        
        
        
        
        
        
        
        //tTest 
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "No order placed yet")
    }
}
