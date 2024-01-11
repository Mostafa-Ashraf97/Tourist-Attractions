//
//  LocationViewModel.swift
//  Tourist Attractions
//
//  Created by A on 07/01/2024.
//

import SwiftUI
import MapKit

class LocationViewModel: ObservableObject {
    
    @Published var locations: [Location]
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    @Published var showLocationList: Bool = false
    @Published var currentLocation: Location {
        didSet {
            updateRegion(location: currentLocation)
        }
    }
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.08, longitudeDelta: 0.08)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = LocationsDataService.locations
        self.currentLocation = locations.first!
        
        self.updateRegion(location: locations.first!)
    }
    
    func updateRegion(location: Location) {
        mapRegion = MKCoordinateRegion(
            center: location.coordinates,
            span: mapSpan)
    }
    
    func toggleLocationList() {
        withAnimation(.easeInOut) {
            showLocationList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            currentLocation = location
            showLocationList = false
        }
    }
    
    func nextButtonPressed() {
        let currentIndex = locations.firstIndex { $0 == currentLocation }!
        let nextIndex = (currentIndex + 1) % locations.count
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
}
