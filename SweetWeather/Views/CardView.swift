//
//  CardView.swift
//  SweetWeather
//
//  Created by Paulo Henrique Gomes da Silva on 17/05/22.
//

import SwiftUI

struct CardView: View {
    
    @State var city: WeatherCity
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(city.cityName)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color("text-card"))
            HStack {
                VStack(alignment: .leading) {
                    Text("Quinta-feira")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(Color("text-card"))
                    HStack {
                        Text("Máx: \(city.maxTemp())°")
                            .foregroundColor(Color("text-card"))
                            .fontWeight(.thin)
                        Text("Min: \(city.minTemp())°")
                            .foregroundColor(Color("text-card"))
                            .fontWeight(.thin)
                    }
                    
                }
                Spacer()
                Image(systemName: "sun.max.fill")
                    .font(Font.system(.largeTitle))
                    .foregroundColor(Color("text-card"))
            }
            
        }
        
        .padding(8)
        .background(Color("background-card").cornerRadius(10))
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(city: .citiesWeather)
            .previewLayout(.sizeThatFits)
        
    }
}
