//
//  PasswordInputViewModel.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//


import Foundation
import Combine

class PasswordInputViewModel: ObservableObject {
    @Published var password: String = ""
    
    var isValid: Bool {
        PasswordValidator.validate(password).allSatisfy { $0.isValid }
    }

    var validations: [PasswordValidationResult] {
        PasswordValidator.validate(password)
    }
}
