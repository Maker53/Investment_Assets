//
//  Asset.swift
//  Investment_Assets
//
//  Created by Станислав on 02.02.2022.
//

struct Asset {
    let name: String
    let ticker: String
    let count: Double
    let price: Double
    let growth: Double
    
    var capitalisation: Double {
        count * price
    }
}
