//
//  LocationPreviewView.swift
//  Tourist Attractions
//
//  Created by A on 08/01/2024.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject var viewModel: LocationViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 5) {
            
            VStack(alignment: .leading, spacing: 15) {
                imageView
                titleView
            }
            VStack(alignment: .trailing, spacing: 10) {
                learnMoreButton
                nextButton
            }
        }
        .padding(30)
        .background(
        RoundedRectangle(cornerRadius: 15)
            .fill(.ultraThinMaterial)
            .offset(y: 70)
            .cornerRadius(10)
        )
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        LocationPreviewView(location: LocationsDataService.locations.first!)
    }
}

extension LocationPreviewView {
    
    private var imageView: some View {
        ZStack {
            Image(location.imageNames.first!)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
        }
        .padding(5)
        .background(Color.white )
        .cornerRadius(10)
    }
    
    private var titleView: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(location.cityName)
                .font(.subheadline)
                .fontWeight(.medium)
        }
    }
    
    private var learnMoreButton: some View {
        Button {
            viewModel.sheetLocation = location
        } label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 130, height: 35)
        }
        .buttonStyle(.borderedProminent)
        .cornerRadius(5)
    }
    
    private  var nextButton: some View {
        Button {
            viewModel.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 130, height: 30)
        }
        .buttonStyle(.bordered)
        .cornerRadius(5)
    }
}
