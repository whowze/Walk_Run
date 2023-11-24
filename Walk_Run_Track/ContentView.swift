//
//  ContentView.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var runnerIsPressed = false
    @State private var scale: CGFloat = 1.0

    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    // Action to start the map and data
                    withAnimation {
                        runnerIsPressed.toggle()
                    }
                }) {
                    RunnerIcon()
                        .padding()
                        .scaleEffect(scale)
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: 1.0).repeatForever()) {
                                scale = 1.1
                            }
                        }
                    NavigationLink(destination: RunnersDetailsView(), isActive: $runnerIsPressed) {}
                }
                VStack {
                    Text("Let's Move!")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
