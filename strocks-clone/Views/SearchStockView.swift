//
//  SearchStockView.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 20/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct SearchStockView: View {
    // MARK: - Propriedade
    @State private var searchSymbol: String = ""
    
    // MARK: - Conteudo
    var body: some View {
        VStack {
            TextField("Símbolo Cotações de Ações", text: $searchSymbol)
                .padding()
                .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .stroke(Color.darkBlue, lineWidth: 0.5))
                .padding()
                .textInputAutocapitalization(.never)
            Divider()
            
            StockCellView(stock: "AAPL", description: "Apple Computer")
            Divider()
            StockCellView(stock: "AAPL", description: "Apple Computer")
            Divider()
            StockCellView(stock: "AAPL", description: "Apple Computer")
            Divider()
            
            Spacer()
        }//: VSTACK
    }
}

// MARK: - Visualização
struct SearchStockView_Previews: PreviewProvider {
    static var previews: some View {
        SearchStockView()
    }
}
