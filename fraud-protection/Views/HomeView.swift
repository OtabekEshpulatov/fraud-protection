//
//  HomeView.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import SwiftUI


public struct HomeView: View {
  
    
    public var body: some View {
            NavigationStack
            {
                HomeHeaderView()
                HomeBodyView()
            }
    
    }
}


#Preview { 
    HomeView()
}
