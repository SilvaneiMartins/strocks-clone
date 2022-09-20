//
//  APIResquest.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 20/09/22.
//  silvaneimartins_rcc@hotmail.com

import Foundation

class APIResquest {
    // MARK: - Propriedade
    static let instance = APIResquest()
    
    // MARK: - Url e Token da api
    private var url = ""
    
    // Os dados tem que realizar cadastro na api e obter seu token;
    private var token = ""
    
    public func getSymbolQuote(symbol: String, handler: @escaping(_ returnedQuote: Quote?) -> ()) {
        let query: String = "quote?symbol=\(symbol)"
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Erro getting quote:\(error)")
                    return
                }
                
                guard let quoteData = data else {
                    print("Symbol search data no valid")
                    return
                }
                
                let returnedQuote = try? JSONDecoder().decode(Quote.self, from: quoteData)
                
                handler(returnedQuote)
            }
            task.resume()
        }
    }
    
    public func getSymbolLookup(searchQuery: String, handler: @escaping(_ returnedSymbols: StockSymbolSearch?) -> ()) {
        let query: String = "search?q=\(searchQuery)"
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error searching for sumbol: \(error)")
                    return
                } else {
                    guard let searchData = data else {
                        print("Symbol search not valid")
                        return
                    }
                    
                    let returnedSymbols = try? JSONDecoder().decode(StockSymbolSearch.self, from: searchData)
                    
                    handler(returnedSymbols)
                }
            }
            task.resume()
        }
    }
    
    public func getCandle(symbol: String, hourLength: Int, handler: @escaping(_ returnedCandles: Candles?) -> ()) {
        // Data
        let endDate = Int(Date().timeIntervalSince1970)
        
        // Iniciar Data
        let startDate = Int((Calendar.current.date(bySetting: .day, value: -(hourLength), of: Date())?.timeIntervalSince1970 ?? Date().timeIntervalSince1970))
        
        let query  = "stock/candle?symbol=\(symbol)&resolution=5&from=\(endDate)&to=\(startDate)"
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error getting candles: \(error)")
                    return
                } else {
                    guard let searchData = data else {
                        print("Candle data not valid!")
                        return
                    }
                    
                    let returnedCandles = try? JSONDecoder().decode(Candles.self, from: searchData)
                    
                    handler(returnedCandles)
                }
            }
            task.resume()
        }
    }
}
