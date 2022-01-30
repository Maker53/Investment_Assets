//
//  Share.swift
//  Investment_Assets
//
//  Created by Станислав on 30.01.2022.
//

struct Share {
    let securities: Securities
    let marketdata: Marketdata
}

struct Securities {
    let data: [[Any]]
}

struct Marketdata {
    let data: [[Any]]
}
