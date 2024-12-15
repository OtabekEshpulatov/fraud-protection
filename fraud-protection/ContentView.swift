//
//  ContentView.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView{
            HomeView().tabItem{
                Image(systemName: "paperplane.fill")
                Text("lcd-news")
            }
            
            FraudIncidentReportView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                      .padding([.bottom,.trailing],10)
                    Text("lcd-report-fraud-incident")
                }
            
            UserSettingsView().tabItem{
                Image(systemName: "gear")
                Text("lcd-settings")
            }

        }
        
    }
}

#Preview {
    ContentView()
}
