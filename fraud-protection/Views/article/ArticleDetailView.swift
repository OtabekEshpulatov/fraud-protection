//
//  ArticleDetailView.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import SwiftUI

struct ArticleDetailView: View{
    
    @StateObject var viewModel: ArticleDetailViewModel = ArticleDetailViewModel()
    
    
    var article: Article
    
    var body: some View{
        
        ScrollView
        {
            Text(article.title).font(.headline)
            VStack{
                if !isEmpty(article.previewImagePath){
                    Image(article.previewImagePath ?? "no-image")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                Text(article.content)
            }
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                headerButtons
                        }
        }
        .sheet(isPresented: $viewModel.isSharingSheet) {
            ShareSheet(items: ["Check out this amazing Article!"])
        }
        
    }
    
    
    var headerButtons: some View{
        HStack{
            Spacer()
            HStack{
                Button{
                    // bookmark
                }label: {
                    Image(systemName: "bookmark.circle")
                }.font(.title)
                
                
                Button{
                    // bookmark
                    viewModel.isSharingSheet = true
                }label: {
                    Image(systemName: "square.and.arrow.up.circle")
                }.font(.title)
                
            }
            
        }
    }
}


#Preview {
    ArticleDetailView(article: staticArticles[0])
}
