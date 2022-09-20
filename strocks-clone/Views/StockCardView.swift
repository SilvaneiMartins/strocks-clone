//
//  SorckCardView.swift
//  strocks-clone
//
//  Created by Silvanei  Martins on 16/09/22.
//

import SwiftUI

struct StockCardView: View {
    // MARK: - Propriedade
    
    // MARK: - Conteudo
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "appletv.fill")
                    .font(.system(size: 50))
                
                VStack {
                    Text("AAPL")
                        .fontWeight(.bold)
                        .font(.title3)
                    Text("Apple Inc")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }//: VSTACK
                Spacer()
                Text("1.2%")
                    .foregroundColor(.lightGreen)
                    .fontWeight(.bold)
                    .font(.title3)
            }//: HSTACK
            
            Spacer()
            
            HStack {
                Text("R$ 736,48")
                    .fontWeight(.bold)
                    .font(.title)
                Spacer()
                LineChartView(data: StockMockData.apple.normalizedValue)
                    .stroke(Color.lightGreen, lineWidth: 1.5)
            }//: HSTACK
        }//: VSTACK
        .padding(.horizontal)
        .padding(.vertical)
        .padding(5)
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray)
        )
    }
}

// MARK: - Visualização
struct SorckCardView_Previews: PreviewProvider {
    static var previews: some View {
        StockCardView()
    }
}
