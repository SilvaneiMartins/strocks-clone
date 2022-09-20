//
//  JSONDecoders.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 20/09/22.
//  silvaneimartins_rcc@hotmail.com

import Foundation

struct Quote: Decodable {
    let c: Double
    let d: Double
    let dp: Double
    let h: Double
    let l: Double
    let o: Double
    let pc: Double
    let t: Double
}

struct StockSymbolSearch: Decodable {
    let count: Int
    let result: [StockSymbol]
}

struct StockSymbol: Decodable, Hashable {
    let description: String
    let displaySymbol: String
    let symbol: String
    let type: String
}

struct Candles: Decodable {
    let c: [Double]
}
