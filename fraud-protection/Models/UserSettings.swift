//
//  UserSettings.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import Foundation

public struct UserSettings:AbstractModelProtocol {
    
    public var id: UUID
    
    public var fullName: String?
    public var phoneNumber: String?
    public var locale: AppLocale? = AppLocale.from(Locale.current.identifier)
}

