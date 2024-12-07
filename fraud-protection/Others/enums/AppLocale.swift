//
//  Locales.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//

import Foundation

public enum AppLocale: String, CaseIterable, Encodable, Decodable {
    case english = "en"
    case russian = "ru"
    case uzbek_latin = "uz"
    case uzbek_cyrillic = "uz-Cyrl"

    /// Returns the corresponding `Locale` instance
    var locale: Locale {
        Locale(identifier: self.rawValue)
    }

    /// Returns the display name for the locale (in the current language)
    var displayName: String {
        locale.localizedString(forLanguageCode: self.rawValue) ?? self.rawValue
    }
    
    var flag: String {
         switch self {
         case .english: return "🇺🇸"
         case .russian: return "🇷🇺"
         case .uzbek_latin, .uzbek_cyrillic: return "🇺🇿"
         }
     }
    
    public static func from(_ identifier: String) -> AppLocale? {
        return AppLocale(rawValue: identifier)
    }
}
