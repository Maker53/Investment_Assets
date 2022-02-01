//
//  NetworkManager.swift
//  Investment_Assets
//
//  Created by Станислав on 30.01.2022.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetch(from url: String) {
        guard let url = URL(string: url) else {
            print("wrong url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print("wrong data")
                return
            }
            
            do {
                let share = try JSONDecoder().decode(Share.self, from: data)
                DispatchQueue.main.async {
                    print(share.marketdata.data.first ?? 0)
                    print(share.securities.data.first ?? "")
                }
            } catch let error {
                print(error)
            }
        }.resume()
    }
}


