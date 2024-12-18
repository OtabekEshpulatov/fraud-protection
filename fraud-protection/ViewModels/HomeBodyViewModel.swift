//
//  HomeViewModel.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import Foundation

public class HomeBodyViewModel: ObservableObject {
    
    
    @Published var searchText: String = ""
    @Published var searching: Bool = false
    @Published var articles: [Article] = staticArticles
    
    var emptySearch: Bool{
       return searchResults.isEmpty
    }
    
    var searchResults: [Article] {
        if searchText.isEmpty {
            
            return articles
        }
        var articles  = staticArticles.filter{$0.title.lowercased().contains(searchText.lowercased())}
        return articles
    }
    
    
    

    
}
