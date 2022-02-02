//
//  AssetData.swift
//  Investment_Assets
//
//  Created by Станислав on 30.01.2022.
//

struct AssetData: Decodable {
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

/* Для получения всего списка торгуемых на рынке бумаг перейди по ссылке
https://iss.moex.com/iss/engines/stock/markets/shares/boards/TQBR/securities
можно по каждому режиму торгов при запуске приложения сохранять данные о названии бумаг в множества
при поиске инструмента для его добавления можно проверять наличие инструмента в подготовленном множестве
и при нажатии на кнопку "добавить" отправлять название тикера уже с запросом на сервер и подгрузкой необходимых данных,
 для дальнейшего отображения в таблице
*/
