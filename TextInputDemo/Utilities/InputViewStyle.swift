//
//  InputViewStyle.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//

import SwiftUI

enum InputState {
    case normal
    case error
}

struct InputViewStyle {
    static func borderColor(for state: InputState) -> Color {
        switch state {
        case .normal:
            return Constants.Colors.surfaceXHigh
        case .error:
            return Constants.Colors.surfaceDanger
        }
    }

    static func titleColor(for state: InputState) -> Color {
        switch state {
        case .normal:
            return Constants.Colors.contentOnNeutralXXHigh
        case .error:
            return Constants.Colors.surfaceDanger
        }
    }
}
