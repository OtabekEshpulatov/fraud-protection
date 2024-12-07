//
//  HomeHeader.swift
//  fraud-protection
//
//  Created by kebato OS on 06/12/24.
//

import SwiftUI

public struct HomeHeader: View {
    
    public var body: some View {
        HStack{
            Spacer()
            UserAvatar(image:Image("userImage"))
                .padding()
        }
    }
}
