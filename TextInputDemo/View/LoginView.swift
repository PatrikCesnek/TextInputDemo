//
//  ContentView.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @StateObject private var passwordVM = PasswordInputViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            InputView(
                title: Constants.Strings.email,
                isOptional: false,
                placeholder: Constants.Strings.emailPlaceholder,
                text: $email,
                isSecure: false
            )
            
            PasswordInputView(viewModel: passwordVM)
            
            Button(action: {
                
            }) {
                Text(Constants.Strings.loginButton)
                    .font(Constants.Fonts.bodyM)
                    .frame(maxWidth: .infinity)
                    .padding(20)
                    .background(
                        passwordVM.isValid
                        ? Constants.Colors.surfaceBand
                        : Constants.Colors.contentOnNeutralMedium
                    )
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(!passwordVM.isValid)
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal, 20)
        .navigationTitle(Constants.Strings.login)
    }
}

#Preview {
    LoginView()
}
