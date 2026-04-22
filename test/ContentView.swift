//
//  ContentView.swift
//  test
//
//  Created by Valentina Andrada Perino on 22/04/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(.blue) //color background
                .ignoresSafeArea() //para que quede el color del background incluido en la parte del dinamic island y el botón
            
            // Tarjeta
            VStack (alignment: .leading, spacing: 20) {
                Image("niagarafalls")
                    .resizable()
                    .scaledToFit() // lo mismo que poner: .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                
                HStack{
                    Text("Niagara Falls")
                        .font(.title)
                        .bold()
                    
                    Spacer() //funciona como space-between entre titulo y estrellas
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }.foregroundStyle(.orange)
                        
                        Text("(Reviews 361)")
                            .font(.caption)
                    }
                }
                Text("Come visit for an experience of a lifetime.")
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundStyle(.gray)
                .font(.caption)
            }
            .padding()
            .background(){
                Rectangle()
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                    .shadow(radius: 13)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
