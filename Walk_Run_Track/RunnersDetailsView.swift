//
//  RunnersDetailsView.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/24/23.
//

import SwiftUI

struct RunnersDetailsView: View {
    let customButtonFrame = CGSize(width: 350, height: 100)
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: FullScreenMapView()) {
                    MapView()
                        .frame(width: customButtonFrame.width, height: customButtonFrame.height)
                }
                
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding()
                
                VStack {
                    Text("Timer Running")
                        .frame(width: customButtonFrame.width, height: customButtonFrame.height)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding()
                
                VStack {
                    Text("Distance Traveled")
                        .frame(width: customButtonFrame.width, height: customButtonFrame.height)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding()
                
                // Map button
                
                // Pause and Stop
            }
        }
    }
}
        
#Preview {
    RunnersDetailsView()
}
