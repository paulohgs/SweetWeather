//
//  MiniCardView.swift
//  SweetWeather
//
//  Created by Paulo Henrique Gomes da Silva on 18/05/22.
//

import SwiftUI

struct MiniCardView: View {
    var body: some View {
        VStack {
            Text("Ter")
                .foregroundColor(Color("text-card"))
                .font(.title)
            Image(systemName: "cloud.fill")
                .foregroundColor(Color("text-card"))
                .font(.title2)
            VStack {
                Text("Máx: 24°")
                    .foregroundColor(Color("text-card"))
                Text("Min: 19°")
                    .foregroundColor(Color("text-card"))
            }
            .padding(.top, 5)
        }
        .frame(height: 80)
        .padding()
        .background(Color("background-card"))
        .cornerRadius(10)
        
        
    }

        
}

struct MiniCardView_Previews: PreviewProvider {
    static var previews: some View {
        MiniCardView()
            .previewLayout(.sizeThatFits)
    }
}
