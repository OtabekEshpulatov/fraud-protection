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
            ArticleLabelImage(imagePath: article.previewImagePath ?? "no-image")
            VStack(spacing: 20){
                Text(article.title).fontWeight(.medium).font(.system(size: 14))
                    .lineLimit(4)
                
                HStack{
                    if !isEmpty(article.createdAt){
                        Text(String(dayDifference(article.createdAt,Date()))+" days ago")
                    }
                }
                .fontWeight(.regular).font(.system(size: 10))
                .foregroundColor(colorFromHex("7D7B7B"))
                .frame(alignment: .leading)
            }
        }
    }
    
   
}

