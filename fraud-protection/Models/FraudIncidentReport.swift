//
//  FraudIncidentReport.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import Foundation

public struct FraudIncidentReport: AbstractModelProtocol {
    
    public var id: UUID = UUID()
    
    public var fullName: String
    public var title: String
    public var description: String
    public var phoneNumber: String
    public var createdAt: Date = Date()
}
