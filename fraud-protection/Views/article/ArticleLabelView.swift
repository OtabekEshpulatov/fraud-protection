//
//  ArticleLabelView.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import SwiftUI

struct ArticleLabelView: View{
    
    
    var article: Article
    
    var body: some View{
        HStack{
            if article.previewImagePath != ""{
                Image(article.previewImagePath)
                    .resizable()
                    .scaledToFit()
            }
            Text(article.title).padding()
        }
    }
}

