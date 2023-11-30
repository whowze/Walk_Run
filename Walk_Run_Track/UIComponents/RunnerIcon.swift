//
//  RunnerIcon.swift
//  Walk_Run_Track
//
//  Created by William Howze on 11/22/23.
//

import SwiftUI

struct RunnerIcon: View {
    let color: Color
    
    var body: some View {
        Image(systemName: "figure.run.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .foregroundStyle(Color(color))
            .shadow(radius: 5)
    }
}

struct RunnerIcon_Preview: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            RunnerIcon(color: .blue)
            RunnerIcon(color: .yellow)
            RunnerIcon(color: .red)
        }
    }
}
