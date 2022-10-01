//
//  Weather.swift
//  SweetWeather
//
//  Created by Paulo Henrique Gomes da Silva on 19/05/22.
//

import Foundation

struct WeatherCity {
    
    //stored properties
    var cityName: String
    var maxTemp: Double
    var minTemp: Double
    var weatherDay: String
    
    //computed properties
    func maxTemp(fields: Int = 1) -> String {
        String(format: "%.\(fields)f", maxTemp)
    }
    
    func minTemp(fields: Int = 1) -> String {
        String(format: "%.\(fields)f", minTemp)
    }
    
    static var citiesWeather: WeatherCity {
        WeatherCity(cityName: "Fortaleza", maxTemp: 30, minTemp: 29, weatherDay: "Nublado")
    }
}
