//
//  View+Modifiers.swift
//  Walk_Run_Track
//
//  Created by William Howze on 1/2/24.
//

import SwiftUI

extension View {
    func customButtonStyle() -> some View {
        self
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.black, lineWidth: 2)
            )
            .padding()
    }
    // TODO: maybe make this so it will work on any size screen - not a fixed height and width
    func customButtonFrame() -> some View {
        let customButtonFrame = CGSize(width: 350, height: 100)
       return self.frame(width: customButtonFrame.width, height: customButtonFrame.height)
    }
}
