//
//  LocationModel.swift
//  Tourist Attractions
//
//  Created by A on 07/01/2024.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    var id: UUID = UUID()
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
 
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
