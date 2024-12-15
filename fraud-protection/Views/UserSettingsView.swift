//
//  UserSettingsView.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import SwiftUI

public struct UserSettingsView: View {
    
    
    @StateObject public var viewModel: UserSettingsViewModel = UserSettingsViewModel()
    
    public var body: some View {
        Form{
            Section("lcd-personal-info"){
                TextField("lcd-full-name",text:$viewModel.fullName).autocorrectionDisabled()
                TextField("lcd-phone-number",text:$viewModel.phoneNumber)
                    
            }
            
            Section("lcd-app-settings"){
                Picker("lcd-language", selection: $viewModel.locale) {
                    ForEach(AppLocale.allCases, id: \.self) { locale in
                        HStack{
                            Text(locale.displayName)
                        }.tag(locale)
                    }
                }
                
                Picker("lcd-app-theme", selection: $viewModel.theme) {
                    ForEach(AppThemes.allCases, id: \.self) { theme in
                        HStack{
                            Text(theme.displayName)
                        }.tag(theme)
                    }
                }
                
            }
       
        }.onChange(of: [viewModel.fullName,
                        viewModel.locale.displayName,
                        viewModel.theme.displayName,
                        viewModel.phoneNumber]) { locale in
            viewModel.saveSettings()
            // TODO: implement locale change
        }
    
    }
    
}

#Preview {
    UserSettingsView()
}
