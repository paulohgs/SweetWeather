//
//  MapView.swift
//  SweetWeather
//
//  Created by Paulo Henrique Gomes da Silva on 16/05/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -3.744369, longitude: -38.536163), span: MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009))
    
    var body: some View {
        
        Map(coordinateRegion: $region)
            .cornerRadius(5)
            .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
