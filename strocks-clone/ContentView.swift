//
//  ContentView.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 16/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct ContentView: View {
    // MARK: - Propriedade
    @State private var isShowingStockSearchSheet: Bool = false
    
    // MARK: - Conteudo
    var body: some View {
        
        VStack {
            HeaderView(showSheet: $isShowingStockSearchSheet)
            PortfolioCardView()
            WatchListView()
            
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStockSearchSheet) {
            SearchStockView()
        }
//        .onAppear {
//            APIResquest.instance.getSymbolQuote(symbol: "AAPL") { returnedQuote in
//                print(returnedQuote)
//            }
//            APIResquest.instance.getSymbolLookup(searchQuery: "Apple") { returnedLookup in
//                print(returnedLookup)
//            }
//            APIResquest.instance.getCandle(symbol: "AAPL", hourLength: 8) { returnedCandle in
//                print(returnedCandle)
//            }
//        }
    }
}

// MARK: - Visualização
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
