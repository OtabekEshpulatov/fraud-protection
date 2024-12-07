//
//  ArticleLabelImage.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//

import SwiftUI
public struct ArticleLabelImage: View {
    
    
    public var imagePath: String
    
    
    public var body: some View {
        Image(imagePath)
        .resizable()
            .scaledToFit()
            .frame(width: 170, height: 90)
    }
    
}
