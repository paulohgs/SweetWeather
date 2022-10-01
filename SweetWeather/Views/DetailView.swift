//
//  DetailView.swift
//  SweetWeather
//
//  Created by Joan Wilson Oliveira on 01/10/22.
//

import SwiftUI

struct DetailView: View {

    var city: WeatherCity

    var body: some View {
        VStack {
            List {
                Section("Clima") {
                    Text(city.weatherDay)
                }

                Section("Temperaturas") {
                    Text("Maxima \(city.maxTemp())")
                    Text("Mínima \(city.minTemp())")
                }
            }
        }
        .navigationTitle(city.cityName)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(city: WeatherCity(cityName: "Fortaleza", maxTemp: 30, minTemp: 29, weatherDay: "Nublado"))
    }
}
