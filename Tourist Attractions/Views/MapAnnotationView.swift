//
//  MapAnnotationView.swift
//  Tourist Attractions
//
//  Created by A on 09/01/2024.
//

import SwiftUI

struct MapAnnotationView: View {
    
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack {
            Image(systemName: "mappin.and.ellipse")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
                .font(.headline)
                .frame(width: 30, height: 30)
                .padding(.bottom, 22)
                .offset(y: -12)
        }
        
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        MapAnnotationView()
    }
}
