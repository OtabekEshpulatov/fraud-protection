//
//  SimpleArticleLabelView.swift
//  fraud-protection
//
//  Created by kebato OS on 15/12/24.
//

import SwiftUI

struct SimpleArticleLabelView: View{
    
    
     var article: Article
    
     var body: some View{
        VStack(alignment: .leading,spacing: 20){
            Text(article.title).font(.subheadline).fontWeight(.medium)
                .lineLimit(4)
            
            Text(article.content).font(.caption).fontWeight(.regular).lineLimit(3)
            NavigationLink(destination: ArticleDetailView(article: article).padding()){}
            
        
            if !isEmpty(article.createdAt){
                    Text("\(String(dayDifference(article.createdAt,Date()))) \(NSLocalizedString("lcd-days-ago",comment: ""))")
                        .fontWeight(.regular).font(.system(size: 10))
                        .foregroundColor(colorFromHex("7D7B7B"))
                    
            }
          
        }.frame(alignment: .leading)
    }
}

#Preview {
    SimpleArticleLabelView(article: staticArticles[5])
}
