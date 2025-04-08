//
//  PasswordInputView.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//


import SwiftUI

struct PasswordInputView: View {
    @ObservedObject var viewModel: PasswordInputViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Dimensions.dimensionXs) {
            InputView(
                title: Constants.Strings.password,
                isOptional: false,
                placeholder: Constants.Strings.passwordPlaceholder,
                text: $viewModel.password,
                isSecure: true,
                state: viewModel.isValid ? .normal : .error
            )

            VStack(alignment: .leading, spacing: Constants.Dimensions.dimensionXs) {
                ForEach(viewModel.validations, id: \.message) { result in
                    HStack {
                        Image(
                            systemName: result.isValid
                            ? Constants.SystemImages.checkmarkCircle
                            : Constants.SystemImages.xmarkCircle
                        )
                        .foregroundColor(
                            result.isValid
                            ? Constants.Colors.contentOnNeutralMedium
                            : Constants.Colors.contentOnNeutralDanger
                        )

                        Text(result.message)
                            .foregroundColor(.contentOnNeutralMedium)
                            .font(Constants.Fonts.labelS)
                    }
                }
            }
        }
    }
}

#Preview {
    PasswordInputView(viewModel: .init())
}
