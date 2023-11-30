//
//  MapView.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/26/23.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)

    var body: some View {
        Map(position: $position) {}
            .mapControls {
                MapUserLocationButton()
                MapPitchToggle()
            }
            .onAppear {
                CLLocationManager().requestWhenInUseAuthorization()
            }
    }
}

#Preview {
    MapView()
}
