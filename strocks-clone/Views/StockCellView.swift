//
//  StockCellView.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 20/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct StockCellView: View {
    // MARK: - Propriedade
    let stock: String
    let description: String
    
    // MARK: - Conteudo
    var body: some View {
        HStack {
            Text(stock)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.darkBlue)
            
            Spacer(minLength: 0)
            
            Text(description)
                .foregroundColor(.gray)
        }// HSTACK
        .padding()
        .background(Color.white)
    }
}

// MARK: - Visualização
struct StockCellView_Previews: PreviewProvider {
    static var previews: some View {
        StockCellView(stock: "AAPL", description: "Apple Computers")
    }
}
