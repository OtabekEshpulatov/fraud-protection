//
//  UserSettingsViewModel.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//

import Foundation

public class UserSettingsViewModel: ObservableObject {
    
    @Published var settings: UserSettings
    
    @Published var fullName: String
    @Published var phoneNumber: String
    @Published var locale: AppLocale
    @Published var theme: AppThemes
    
    public func saveLanguage(_ language: AppLocale) {}
    
    init() {
        let loadedSettings = UserSettingsViewModel.loadSettings()
        ?? UserSettings(
            id: UUID(),
            fullName: "",
            phoneNumber: "",
            locale: AppLocale.english
        )
        
        fullName = loadedSettings.fullName ?? ""
        phoneNumber = loadedSettings.phoneNumber ?? ""
        locale = loadedSettings.locale ?? AppLocale.english
        theme = loadedSettings.theme ?? AppThemes.from(deviceColorScheme ?? "") ?? AppThemes.light
    
        settings = loadedSettings
    }
    
    
    
    func saveSettings(){
        do{
            let updatedSettings = UserSettings(
                id: UUID(),
                fullName: self.fullName,
                phoneNumber: self.phoneNumber,
                locale: self.locale,
                theme: self.theme
            )
            
            let data = try JSONEncoder().encode(updatedSettings)
            UserDefaults.standard.set(data, forKey: "userSettings")
            settings = updatedSettings
            
            print("Saved user settings: \(data)")
        }catch let error{
            print("Failed to encode user settings: \(error)")
        }
    }
    
    static func  loadSettings()-> UserSettings? {
        if let userSettingsRaw = UserDefaults.standard.data(forKey: "userSettings"){
            do{
                let decodedSettings = try JSONDecoder().decode(UserSettings.self, from: userSettingsRaw)
                print("Loaded user settings: \(userSettingsRaw)")
                return decodedSettings
            }catch let error{
                print("Failed to encode user settings: \(error)")
            }
        }
        return nil
    }
    
    
}
