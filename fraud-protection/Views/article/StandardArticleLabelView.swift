//
//  ArticleLabelView.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import SwiftUI

struct StandardArticleLabelView: View{
    
    
    var article: Article
    
    var body: some View{
        
        NavigationLink(destination:LazyView(ArticleDetailView(article: article).padding())){
            HStack{
                ArticleLabelImage(imagePath: article.previewImagePath ?? "no-image")
                articleBody
            }
        }
      
    }

    var articleBody: some View{
        VStack(alignment: .leading,spacing: 20){
            Text(article.title).fontWeight(.medium).font(.system(size: 14))
                .lineLimit(4)
        
                if !isEmpty(article.createdAt){
                    Text("\(String(dayDifference(article.createdAt,Date()))) \(NSLocalizedString("lcd-days-ago",comment: "certain days ago"))")
                        .fontWeight(.regular).font(.system(size: 10))
                        .foregroundColor(colorFromHex("7D7B7B"))
                    
                }
            
          
        }.frame(alignment: .leading)
    }
   
}



#Preview {
    StandardArticleLabelView(article: staticArticles[0])
}
