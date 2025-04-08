//
//  InputView.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//


import SwiftUI

struct InputView: View {

    let title: String
    let isOptional: Bool
    let placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    var state: InputState = .normal

    @State private var isTextVisible: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Dimensions.dimensionXs) {
            HStack(spacing: Constants.Dimensions.dimensionXs) {
                Text(title)
                    .font(Constants.Fonts.labelM)
                    .foregroundColor(InputViewStyle.titleColor(for: state))
                if isOptional {
                    Text(Constants.Strings.optional)
                        .font(Constants.Fonts.labelS)
                        .foregroundColor(.contentOnNeutralMedium)
                }
            }

            HStack {
                if isSecure && !isTextVisible {
                    SecureField(placeholder, text: $text)
                        .font(Constants.Fonts.bodyM)
                } else {
                    TextField(placeholder, text: $text)
                        .font(Constants.Fonts.bodyM)
                }

                if isSecure {
                    Button(action: {
                        isTextVisible.toggle()
                    }) {
                        Image(
                            systemName: isTextVisible
                            ? Constants.SystemImages.eyeSlash
                            : Constants.SystemImages.eye
                        )
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(Constants.Colors.contentOnNeutralLow)
                    }
                }
            }
            .padding([.top, .bottom], Constants.Dimensions.dimensionS)
            .padding([.trailing, .leading], Constants.Dimensions.dimensionXs)
            .frame(maxWidth: .infinity, minHeight: Constants.Dimensions.dimension5xl)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.Dimensions.input)
                    .stroke(
                        InputViewStyle.borderColor(for: state),
                        lineWidth: Constants.Dimensions.strokeL
                    )
            )
            .cornerRadius(Constants.Dimensions.input)
        }
    }
}

#Preview {
    @Previewable @State var text: String = ""
    InputView(
        title: "Lorem Ipsum",
        isOptional: true,
        placeholder: "Lorem",
        text: $text,
        isSecure: true,
        state: .normal
    )
}
