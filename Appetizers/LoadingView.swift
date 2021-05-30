//
//  LoadingView.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 25/05/2021.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView 
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}

struct LoadinView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            ActivityIndicator()
        }
    }
}
