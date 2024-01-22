//
//  LocationListView.swift
//  Tourist Attractions
//
//  Created by A on 07/01/2024.
//

import SwiftUI

struct LocationListView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.locations) { location in
                Button(action: {
                    viewModel.showNextLocation(location: location)
                }, label: {
                    listRowView(location: location)
                })
                .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
    
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
            .environmentObject(LocationViewModel())
    }
}

extension LocationListView {
    
    private func listRowView(location: Location) -> some View {
        HStack {
            Image(location.imageNames.first!)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .leading)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .padding(.vertical, 10)
            
        }
    }
}
