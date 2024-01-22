//
//  RunnersDetailsView.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/24/23.
//

import SwiftUI

struct RunnersDetailsView: View {

    // TODO: figure out how to get a background color - system color
    var body: some View {
            NavigationStack {
                VStack {
                    NavigationLink(destination: FullScreenMapView()) {
                        MapView()
                            .customButtonFrame()
                    }
                    .customButtonStyle()
                    
                    VStack {
                        Text("Timer Running")
                            .customButtonFrame()
                    }
                    .customButtonStyle()
                    
                    VStack {
                        Text("Distance Traveled")
                            .customButtonFrame()
                    }
                    .customButtonStyle()
                    
                    
                    // MARK: Runner Icons - Pause and Stop
                    HStack {
                        RunnerIcon(color: .yellow)
                        
                        Spacer()
                        
                        RunnerIcon(color: .red)
                    }
                    .padding(.top, 50)
                    .padding()
                }
            }
    }
}
        
#Preview {
    RunnersDetailsView()
}
