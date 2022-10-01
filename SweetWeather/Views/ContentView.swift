//
//  ContentView.swift
//  SweetWeather
//
//  Created by Paulo Henrique Gomes da Silva on 11/05/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var busca = ""
    @State var start = 0

    var body: some View {
        ZStack{
            if start == 0 {
                emptyState
            } else {
                program
            }
        }
    }

    var program: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 0){
                
                // Primeira seção do app que contem o card com as info da cidade mais visitada
                Section(
                    header: Text("Most visited city")
                        .font(.title2)
                        .padding(.horizontal)
                ) {
                    
                    NavigationLink(
                        destination: Text("Segunda view")
                    ){
                        CardView(city: .citiesWeather)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("text-card"), lineWidth: 1)
                            )
                            .frame(height: 80)
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                    }.padding(.horizontal)
                }
                
                // Segunda seção que contem informações semanais do tempo
                Section(
                    header: Text("Week information")
                        .font(.title2)
                        .padding(.horizontal)
                ){
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach((1...6), id: \.self) {_ in
                                NavigationLink(
                                    destination: Text("Segunda view"))
                                {
                                    MiniCardView()
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color("text-card"), lineWidth: 1)
                                        )
                                        .padding(.leading)

                                }
                            }
                        }.padding(.vertical, 10)
                    }
                }
                
                Spacer()
                
                // Terceira seção do app que contem o mapa
                Section(
                    header: Text("Localization")
                        .font(.title2)
                        .padding(.horizontal)
                ){
                    NavigationLink(
                        destination: MapView()){
                            MapView()
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("text-card"), lineWidth: 1)
                                )
                                .padding()
                        }.headerProminence(.increased)
                }
            }
            // Nome da navigationView e barra de pesquisa local
            .navigationTitle("Sweet Weather")
            .searchable(text: $busca)
            .navigationBarItems(trailing: NavigationLink(destination: FavoritesView()){Text("Favoritos")})
        }
    }

    var emptyState: some View {
        Image(systemName: "nameYourImage")
            .resizable()
            .scaledToFill()
            .task {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    start = 1
                }
            }
    }


    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                    .preferredColorScheme(.dark)
                ContentView()
                    .preferredColorScheme(.light)
            }

        }
    }
}
