//
//  LocationDetailView.swift
//  Tourist Attractions
//
//  Created by A on 11/01/2024.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    var location: Location
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                imageSection
                
                namesSection
                
                Divider()
                
                descriptionSection
                
                Divider()
                
                mapSection
            }
        }
        .ignoresSafeArea()
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationViewModel())
    }
}

extension LocationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) { images in
                Image(images)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 500)
        .overlay(alignment: .topLeading) {
            backButton
        }
    }
    
    private var namesSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(location.cityName)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 25) {
            Text(location.description)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Read more on Wikipedia", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
        .padding()
    }
    
    private var mapSection: some View {
        VStack {
            Map(coordinateRegion: .constant(MKCoordinateRegion(
                center: location.coordinates,
                span: MKCoordinateSpan(latitudeDelta:  0.1,
                                       longitudeDelta: 0.1))),
                annotationItems: [location]) { location in
                MapAnnotation(coordinate: location.coordinates) {
                    MapAnnotationView()
                }
            }
                .frame(width: UIScreen.main.bounds.width)
                .aspectRatio(1, contentMode: .fit)
                .cornerRadius(30)
                .allowsHitTesting(false)
        }
    }
    
    private var backButton: some View {
        Button {
            viewModel.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .foregroundColor(.primary)
                .padding()
                .background(.thickMaterial)
                .cornerRadius(20)
                .padding(.top, 40)
                .padding(.leading, 20)
        }
    }
}
