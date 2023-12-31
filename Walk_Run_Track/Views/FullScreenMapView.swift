//
//  FullScreenMapView.swift
//  Walk_Run_Track
//
//  Created by William Howze on 12/31/23.
//

import MapKit
import SwiftUI

struct FullScreenMapView: View {

        @State var position: MapCameraPosition = .userLocation(fallback: .automatic)
        
        var body: some View {
            Map(position: $position) {}
                .mapControls {
                    MapUserLocationButton()
                    MapPitchToggle()
                }
        }
    }

#Preview {
    FullScreenMapView()
}
