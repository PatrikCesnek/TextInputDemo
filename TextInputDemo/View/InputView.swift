import SwiftUI

struct InputView: View {
    enum InputState {
        case normal
        case error
    }

    let title: String
    let isOptional: Bool
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var state: InputState = .normal

    @State private var isTextVisible: Bool = false

    private var borderColor: Color {
        switch state {
        case .normal:
            return Color.surfaceXHigh
        case .error:
            return Color.surfaceDanger
        }
    }

    private var titleColor: Color {
        switch state {
        case .normal:
            return Color.contentOnNeutralXXHigh
        case .error:
            return Color.surfaceDanger
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 4) {
                Text(title)
                    .font(.custom("Inter", size: 16).weight(.medium))
                    .foregroundColor(titleColor)
                if isOptional {
                    Text("Optional")
                        .font(.custom("Inter", size: 14).weight(.medium))
                        .foregroundColor(.contentOnNeutralMedium)
                }
            }

            HStack {
                if isSecure && !isTextVisible {
                    SecureField(placeholder, text: $text)
                        .font(.custom("Inter", size: 16))
                } else {
                    TextField(placeholder, text: $text)
                        .font(.custom("Inter", size: 16))
                }

                if isSecure {
                    Button(action: {
                        isTextVisible.toggle()
                    }) {
                        Image(systemName: isTextVisible ? "eye.slash" : "eye")
                            .foregroundColor(.contentOnNeutralLow)
                    }
                }
            }
            .padding(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(borderColor, lineWidth: 1)
            )
        }
    }
}
