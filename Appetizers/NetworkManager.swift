//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Frantisek Varadzin on 23/05/2021.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url))  { data, response, error in
            if let _ = error  {
                completed(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
        
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                    
                   
                completed(.success(decodedResponse.request))
                
            } catch {
                completed(.failure(.invalidData))
            }
            
            }
        task.resume()
    }
    
    func downloadImage(fromURLString urlString: String, completed: @escaping(UIImage?) -> Void ) {
        let cacheKey = NSString(string: fromURLString)
        
        
    }
    
    
}
