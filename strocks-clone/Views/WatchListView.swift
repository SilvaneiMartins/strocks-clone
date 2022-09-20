//
//  WatchListView.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 16/09/22.
//  silvaneimartins_rcc@hotmai.com

import SwiftUI

struct WatchListView: View {
    // MARK: - Propriedade
    
    // MARK - Conteudo
    var body: some View {
        VStack {
            HStack {
                Text("Lista de Observação")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.darkBlue)
                Spacer()
            }//: HSTACK
            
            ScrollView(showsIndicators: false) {
                VStack {
                    StockCardView()
                    StockCardView()
                    StockCardView()
                    StockCardView()
                }//: VSTACK
            }//: SCROLLVIEW
            .padding(3)
        }//: VSTACK
    }
}

// MARK: - Visualização
struct WatchListView_Previews: PreviewProvider {
    static var previews: some View {
        WatchListView()
    }
}
