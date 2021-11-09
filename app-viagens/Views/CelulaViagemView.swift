//
//  CelulaViagemView.swift
//  app-viagens
//
//  Created by MAC on 08/11/21.
//

import SwiftUI

struct CelulaViagemView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizaClass
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizaClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizaClass == .compact ? 125 : 200)
                .clipped()
            
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizaClass == .compact ? 14 : 24))
                Spacer()
                Text("R$ \(viagem.valor)")
                    .font(.custom("Avenir", size: self.horizontalSizaClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
    }
}
