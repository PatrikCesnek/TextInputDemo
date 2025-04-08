//
//  PasswordValidationResult.swift
//  TextInputDemo
//
//  Created by Patrik Cesnek on 08/04/2025.
//


import Foundation

struct PasswordValidationResult {
    let isValid: Bool
    let message: String
}

struct PasswordValidator {
    static func validate(_ password: String) -> [PasswordValidationResult] {
        [
            PasswordValidationResult(
                isValid: password.count >= 8,
                message: "Minimálne 8 znakov"
            ),
            PasswordValidationResult(
                isValid: password.range(of: "[A-Z]", options: .regularExpression) != nil,
                message: "Aspoň jedno veľké písmeno"
            ),
            PasswordValidationResult(
                isValid: password.range(of: "[0-9]", options: .regularExpression) != nil,
                message: "Aspoň jedno číslo"
            ),
            PasswordValidationResult(
                isValid: password.range(of: "[!@#$&*?%/]", options: .regularExpression) != nil,
                message: "Aspoň jeden špeciálny znak (? = # / %)"
            )
        ]
    }
}
