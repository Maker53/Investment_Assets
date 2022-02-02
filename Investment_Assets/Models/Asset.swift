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
    
    init?(assetData: AssetData) {
        self.name = assetData.securities.data.first?.first ?? "error"
        self.ticker = assetData.securities.data.first?.last ?? "error"
        self.price = assetData.marketdata.data.first?.first ?? 0
        self.count = 0
        self.growth = 0
    }
}
