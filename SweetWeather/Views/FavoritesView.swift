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
        ScrollView(.vertical) {
            VStack {
                ForEach((1...5), id: \.self) { _ in
                    Button {
                        self.showingSheet = true
                    } label: {
                        CardView(city: .citiesWeather)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("text-card"), lineWidth: 1)
                            )
                            .frame(height: 80)
                            .padding()
                    }.sheet(isPresented: $showingSheet) {
                        NavigationView {
                            DetailView(city: WeatherCity(cityName: "Fortaleza", maxTemp: 30, minTemp: 29, weatherDay: "Nublado"))
                                .toolbar {
                                    ToolbarItem(placement: .primaryAction) {
                                        Button("Done", role: .destructive) {
                                            self.showingSheet = false
                                        }

                                    }
                                }
                        }
                    }

                }
            }
        }
        .navigationTitle("Favorites Places")
    }

}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
            .preferredColorScheme(.dark)
        FavoritesView()
    }
}
