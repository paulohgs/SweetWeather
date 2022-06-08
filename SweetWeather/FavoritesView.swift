//
//  FavoritesView.swift
//  SweetWeather
//
//  Created by Paulo Henrique Gomes da Silva on 12/05/22.
//

import SwiftUI

struct FavoritesView: View {
    @State private var showingSheet: Bool = false
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    ForEach((1...5), id: \.self){_ in
                        Button(action: {
                            self.showingSheet = true
                        }) {
                            CardView(city: .citiesWeather)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color("text-card"), lineWidth: 1)
                                )
                                .frame(height: 80)
                                .padding()
                        }.sheet(isPresented: $showingSheet) {
                            NavigationView {
                                Text("Arrasta pra baixo!!!")
                                    .toolbar {
                                        ToolbarItem(placement: .primaryAction) {
                                            Button(action: {
                                                self.showingSheet = false
                                            }) {
                                                Text("Done").fontWeight(.semibold)
                                            }
                                        }
                                    }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Favorites Places")
//            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .preferredColorScheme(.dark)
        FavoritesView()
    }
}
