//
//  HomeBody.swift
//  fraud-protection
//
//  Created by kebato OS on 06/12/24.
//
import SwiftUI

public struct HomeBodyView: View{
    
    @StateObject
    public var viewModel: HomeBodyViewModel = HomeBodyViewModel()

    public var body: some View{

    
                List{
                    ForEach(viewModel.articles, id: \.self){ article in
                        NavigationLink(destination:LazyView(ArticleDetailView(article: article).padding())){
                        ArticleLabelView(article: article)
                        }
                    }
                    
                }.listStyle(PlainListStyle())
        }
    }



#Preview {
    HomeBodyView()
}
