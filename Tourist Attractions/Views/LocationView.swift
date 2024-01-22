//
//  LocationView.swift
//  Tourist Attractions
//
//  Created by A on 07/01/2024.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            
            VStack {
                locationListSection
                
                Spacer()
                
                locationPreviewSection
            }
        }
        .sheet(item: $viewModel.sheetLocation) { location in
                    LocationDetailView(location: location)
                }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}

extension LocationView {
    
    private var header: some View {
        Text(viewModel.currentLocation.name + ", " + viewModel.currentLocation.cityName)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.primary)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .overlay(alignment: .leading) {
                Image(systemName: "arrow.down")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .padding()
                    .rotationEffect(Angle(degrees: viewModel.showLocationList ? 0 : 180))
            }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $viewModel.mapRegion,
            annotationItems: viewModel.locations) { location in
            MapAnnotation(coordinate: location.coordinates) {
                MapAnnotationView()
                    .scaleEffect(viewModel.currentLocation == location ? 1.2 : 0.8)
                    .shadow(radius: 20)
                    .onTapGesture {
                        viewModel.showNextLocation(location: location)
                    }
            }
        }
    }
    
    private var locationListSection: some View {
        VStack {
            Button {
                viewModel.toggleLocationList()
            } label: {
                header
            }
            
            if viewModel.showLocationList {
                LocationListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding()
    }
    
    private var locationPreviewSection: some View {
        ForEach(viewModel.locations) { location in
            if viewModel.currentLocation == location {
                LocationPreviewView(location: viewModel.currentLocation)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing),
                        removal: .move(edge: .leading)))
            }
        }
    }
}
