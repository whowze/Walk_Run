//
//  ContentView.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/22/23.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var runnerIsPressed = false
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            RunnerIcon()
                .padding()
                .scaleEffect(scale)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 1.0).repeatForever()) {
                        scale = 1.1
                    }
                }

                .onLongPressGesture(minimumDuration: 2.0) {
                    runnerIsPressed.toggle()
                }

                .fullScreenCover(isPresented: $runnerIsPressed) {
                    RunnersDetailsView()
                }
            
            VStack {
                Text("Press And Hold To Start")
                    .padding(.top, 20)
            }
        }
        .onAppear {
            CLLocationManager().requestWhenInUseAuthorization()
        }
        
    }
}

#Preview {
    ContentView()
}
