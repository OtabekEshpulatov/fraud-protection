//
//  HomeHeader.swift
//  fraud-protection
//
//  Created by kebato OS on 06/12/24.
//

import SwiftUI

public struct HomeHeaderView: View {
    
    public var body: some View {
        
        HStack{
            Spacer()
            Text("lcd-latest-frauds").font(.headline)
            Spacer()
            Image(systemName: "magnifyingglass").padding([.trailing],15)
        }
    }
}
