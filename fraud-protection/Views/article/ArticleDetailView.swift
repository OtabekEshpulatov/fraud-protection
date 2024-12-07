//
//  ArticleDetailView.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import SwiftUI

struct ArticleDetailView: View{
    
    var article: Article
    
    var body: some View{
        
        VStack
        {
            Text(article.title).font(.title)
            Image(article.previewImagePath ?? "no-image")
                .resizable()
                .scaledToFit()
            Text(article.content)
        }
    }
}
