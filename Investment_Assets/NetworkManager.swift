//
//  NetworkManager.swift
//  Investment_Assets
//
//  Created by Станислав on 30.01.2022.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetch(from url: String, completion: @escaping(Result<Asset, NetworkError>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            
            do {
                let assetData = try JSONDecoder().decode(AssetData.self, from: data)
                if let asset = Asset(assetData: assetData) {
                    DispatchQueue.main.async {
                        completion(.success(asset))
                    }
                }
            } catch {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}


