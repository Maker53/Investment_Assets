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

enum Link: String {
    case api = "https://iss.moex.com/iss/engines/stock/markets/shares/boards/TQBR/securities/VTBR/.json?iss.meta=off&iss.only=securities,marketdata&marketdata.columns=SECID,LAST&securities.columns=SHORTNAME"
}
