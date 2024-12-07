//
//  Article.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import Foundation

public struct Article: AbstractModelProtocol {
    
    public var id: UUID = UUID()
    
    public var title: String
    public var content: String
    public var previewImagePath: String?
    public var readMinutes: Int
    public var createdAt: Date
}
