//
//  Constants.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//

import SwiftUI

struct Constants {
    
    struct Fonts {
        static let labelM = Font.custom("Inter-Medium", size: 16)
        static let labelS = Font.custom("Inter-SemiBold", size: 14)
        static let bodyM = Font.custom("Inter-Regular", size: 16)
    }
    
    struct Colors {
        // Surface
        static let surfaceXHigh = Color("surfaceXHigh")
        static let surfaceXLow = Color("surfaceXLow")
        static let surfaceBand = Color("surfaceBand")
        static let surfaceDanger = Color("surfaceDanger")
        static let surfaceDangerVariant = Color("surfaceDangerVariant")
        static let surfaceWarning = Color("surfaceWarning")
        static let surfaceWarningVariant = Color("surfaceWarningVariant")
        
        // Content
        static let contentOnNeutralXXHigh = Color("contentOnNeutralXXHigh")
        static let contentOnNeutralMedium = Color("contentOnNeutralMedium")
        static let contentOnNeutralLow = Color("contentOnNeutralLow")
        static let contentOnNeutralDanger = Color("contentOnNeutralDanger")
        static let contentOnNeutralWarning = Color("contentOnNeutralWarning")
        
        // State
        static let stateDefaultHover = Color("stateDefaultHover")
        static let stateDefaultFocus = Color("stateDefaultFocus")
    }
    
    struct Dimensions {
        // Radius
        static let input: CGFloat = 12
        
        // Spacing
        static let dimensionXs: CGFloat = 8
        static let dimensionS: CGFloat = 12
        static let dimensionM: CGFloat = 16
        static let dimensionL: CGFloat = 20
    }
}
