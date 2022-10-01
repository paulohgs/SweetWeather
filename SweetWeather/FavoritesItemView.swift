//
//  FavoritesItemView.swift
//  SweetWeather
//
//  Created by Ieda Xavier on 01/10/22.
//

import SwiftUI

struct FavoritesItemView: View {

    @Binding var showingSheet: Bool
    var city: WeatherCity = .citiesWeather

    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Text(city.cityName)
                Text(city.weatherDay)

                HStack{
                    Text("Máx: \(city.maxTemp())°")
                        .foregroundColor(Color("text-card"))
                        .fontWeight(.thin)
                    Text("Min: \(city.minTemp())°")
                        .foregroundColor(Color("text-card"))
                    .fontWeight(.thin)
                }
                
                Spacer()

            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        showingSheet = false

                    }) {
                        Text("Done").fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

//struct FavoritesItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoritesItemView(showingSheet: s)
//    }
//}
