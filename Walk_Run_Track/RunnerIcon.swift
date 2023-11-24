//
//  RunnerIcon.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/22/23.
//

import SwiftUI

struct RunnerIcon: View {
    
    var body: some View {
        Image(systemName: "figure.run.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundStyle(Color(.systemBlue))
            .shadow(radius: 5)
    }
}


#Preview {
    RunnerIcon()
}


