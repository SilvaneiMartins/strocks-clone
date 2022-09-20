//
//  PortfolioCardView.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 16/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct PortfolioCardView: View {
    // MARK: - Propriedade
    
    // MARK: - Conteudo
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Valor Portfólio")
                    .foregroundColor(Color.gray)
                    .font(.title2)
                
                HStack(alignment: .top) {
                    Text("R$ 6.459,02")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .font(.system(size: 45))
                    
                    Text("2.1%")
                        .foregroundColor(Color.lightGreen)
                        .fontWeight(.bold)
                        .font(.title3)
                }//: HSTACK
            }
            .padding()
            HStack {
                Button(action: {}) {
                    Text("Depositar")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color.lightGreen)
                        )
                }
                Spacer()
                Button(action: {}) {
                    Text("   Retirar   ")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray)
                        )
                }
            }//: HSTACK
            .padding()
        }//: VSTACK
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.darkBlue)
        )
    }
}

// MARK: - Visualização
struct PortfolioCardView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCardView()
    }
}
