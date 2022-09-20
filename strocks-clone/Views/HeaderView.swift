//
//  HeaderView.swift
//  strocks-clone
//  www.silvaneimartins.com.br
//  Created by Silvanei  Martins on 16/09/22.
//  silvaneimartins_rcc@hotmail.com

import SwiftUI

struct HeaderView: View {
    // MARK: - Propriedade
    @Binding var showSheet: Bool
    
    // MARK: - Conteudo
    var body: some View {
        HStack {
            Text("Minhas Ações")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.darkBlue)
            Spacer()
            Button(action: {
                showSheet.toggle()
            }) {
                Image(systemName: "magnifyingglass.circle.fill")
                    .accentColor(Color.darkBlue)
                    .font(.system(size: 40))
            }
        }//: HSTACK
    }
}

// MARK: - Visualização
//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//            .padding()
//    }
//}
