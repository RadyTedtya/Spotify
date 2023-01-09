//
//  Color+Extension.swift
//  Spotify
//
//  Created by Tedtya rady on 4/1/23.
//

import Foundation
import SwiftUI

extension Color {
    static let primaryColor = Color.init(hex: 0x13D8CC)
    static let secondaryColor = Color.init(hex: 0xFFFFFF)
    static let primaryBackground = Color.init(hex: 0x05101A)
    
    
    
//    static let accentColor = Color.init(hex: 0x13D8CC)
//    static let secondaryBackground = Color.init(hex: 0x171A24)
//    static let secondaryDark = Color.init(hex: 0x202532)
//    static let lightText = Color.init(hex: 0xFFFFFF)
//    static let darkText = Color.init(hex: 0x7B8D9D)
//    static let primaryGreen = Color.init(hex: 0x4DC992)
    
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    
}
