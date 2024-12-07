//
//  HomeViewModel.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import Foundation

public class HomeViewModel: ObservableObject {
    
    
    @Published var searchText: String = ""
    
    @Published var articles: [Article] = [
        Article(title: "5 ways to protect your credit card", content: "You can protect your credit card by using a credit card security code, using a credit card reader, using a credit card scanner, using a credit card swipe machine, and using a credit card magnetic strip reader."),
        Article(title: "Online Fraud Protection", content: "Protecting your money online is essential")
    ]
    
    var searchResults: [Article] {
        if searchText.isEmpty {
            return articles
        }
        return articles.filter{$0.title.lowercased().contains(searchText.lowercased())}
    }
    

    
}
