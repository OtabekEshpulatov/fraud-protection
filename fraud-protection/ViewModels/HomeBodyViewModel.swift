//
//  HomeViewModel.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import Foundation

public class HomeBodyViewModel: ObservableObject {
    
    
    @Published var searchText: String = ""
    
    @Published var articles: [Article] = staticArticles
    
    var searchResults: [Article] {
        if searchText.isEmpty {
            return articles
        }
        return articles.filter{$0.title.lowercased().contains(searchText.lowercased())}
    }
    

    
}
