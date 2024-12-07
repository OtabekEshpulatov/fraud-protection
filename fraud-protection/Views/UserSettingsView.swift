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
                TextField("lcd-fullName",text:$viewModel.fullName).autocorrectionDisabled()
                
                Picker("lcd-language", selection: $viewModel.locale) {
                          ForEach(AppLocale.allCases, id: \.self) { locale in
                              HStack{
                                  Text(locale.displayName)
                              }.tag(locale)
                          }
                }
              
            }.onChange(of: [viewModel.fullName,
                            viewModel.locale.displayName,
                            viewModel.phoneNumber]) { locale in
                viewModel.saveSettings()
                // TODO: implement locale change
            }.environment(\.locale, viewModel.locale.locale)

    
    }
    
   
    

}

#Preview {
    UserSettingsView()
}
