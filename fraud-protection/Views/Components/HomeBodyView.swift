//
//  HomeBody.swift
//  fraud-protection
//
//  Created by kebato OS on 06/12/24.
//
import SwiftUI

public struct HomeBody: View{
    
    @StateObject
    public var viewModel: HomeBodyViewModel = HomeBodyViewModel()
    
    public var body: some View{

        NavigationStack{
            List{
                ForEach(viewModel.searchResults, id: \.self){ article in
                    Text(article.title)
                        .padding()
                }
            }
        }.searchable(text: $viewModel.searchText)
            .background(Color.red)
    }
}
