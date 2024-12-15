//
//  AppThemes.swift
//  fraud-protection
//
//  Created by kebato OS on 15/12/24.
//

import SwiftUI

public enum AppThemes: String, CaseIterable, Encodable, Decodable {
    case light = "Light"
    case dark = "Dark"
    
    
    public var displayName: String{
        switch self{
        case .dark:
            return NSLocalizedString("lcd-dark-theme",comment: "Dark theme")
        case .light:
            return NSLocalizedString("lcd-light-theme",comment: "Light theme")
        }
    }
    
    public var colorScheme: ColorScheme{
        switch self {
        case .dark:
            return ColorScheme.dark
        case .light:
            return ColorScheme.light
    }
}
    
    public static func from(_ identifier: String) -> AppThemes? {
        return AppThemes(rawValue: identifier)
    }
    
}
