//
//  Share.swift
//  Investment_Assets
//
//  Created by Станислав on 30.01.2022.
//

struct Share: Decodable {
    let securities: Securities
    let marketdata: Marketdata
}

struct Securities: Decodable {
    let data: [[String]]
}

struct Marketdata: Decodable {
    let data: [[Double]]
}

enum Link: String {
    case api = "https://iss.moex.com/iss/engines/stock/markets/shares/boards/TQBR/securities/VTBR/.json?iss.meta=off&iss.only=securities,marketdata&marketdata.columns=LAST&securities.columns=SHORTNAME,SECID"
}
