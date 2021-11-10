//
//  ContentView.swift
//  app-viagens
//
//  Created by MAC on 06/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
                VStack {
                    
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 155 : 200, alignment: .top)
                    
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localizacao")){
                            CelulaViagemView(viagem: viagem)
                        }
                    }
                    .frame(width: view.size.width)
                }
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
