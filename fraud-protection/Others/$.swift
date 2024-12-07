//
//  4.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//


import SwiftUI

public let staticArticles = [
    Article(
        title: "7 Strategies for Data Privacy Protection",
        content: "Enhance data privacy by using encrypted storage, enabling app permissions wisely, clearing cookies regularly, updating your devices, and avoiding unsecured Wi-Fi networks.",
        previewImagePath: "article-image-5",
        readMinutes: 4,
        createdAt: Date(timeIntervalSinceNow: -86400 * 1) // 1 day ago
    ),
    Article(
        title: "Top 5 Ways to Avoid Phishing Scams",
        content: "Avoid phishing scams by verifying email senders, avoiding unknown links, keeping your software updated, using spam filters, and being cautious of requests for sensitive information.",
        previewImagePath: "article-image-4",
        readMinutes: 3,
        createdAt: Date(timeIntervalSinceNow: -86400 * 3) // 3 days ago
    ),
    Article(
        title: "How to Secure Your Social Media Accounts",
        content: "Secure your accounts by using strong passwords, enabling two-factor authentication, avoiding suspicious links, limiting personal information sharing, and regularly reviewing privacy settings.",
        previewImagePath: "article-image-2",
        readMinutes: 4,
        createdAt: Date(timeIntervalSinceNow: -86400 * 5) // 5 days ago
    ),
    Article(
        title: "5 Tips for Online Shopping Safety",
        content: "Ensure safe online shopping by using trusted websites, avoiding public Wi-Fi, enabling two-factor authentication, monitoring your bank statements, and using virtual credit cards.",
        previewImagePath: "article-image-1",
        readMinutes: 3,
        createdAt: Date(timeIntervalSinceNow: -86400 * 7) // 7 days ago
    ),
    Article(
        title: "The Ultimate Guide to Home Cybersecurity",
        content: "Protect your home network by using a secure router password, enabling firewall protection, keeping devices updated, avoiding suspicious emails, and using antivirus software.",
        previewImagePath: "article-image-3",
        readMinutes: 5,
        createdAt: Date(timeIntervalSinceNow: -86400 * 10) // 10 days ago
    ),
    Article(
        title: "Advanced Cybersecurity Tips for Small Businesses",
        content: "Learn advanced tips to protect your small business, including employee training, securing endpoints, monitoring for breaches, and enforcing strict access control policies.",
        readMinutes: 6,
        createdAt: Date(timeIntervalSinceNow: -86400 * 15) // 15 days ago
    )
]




func colorFromHex(_ hex: String) -> Color? {
    // Ensure the hex string is valid and has the right length
    guard hex.count == 6 || hex.count == 8 else {
        return nil
    }
    
    var hexSanitized = hex
    if hexSanitized.hasPrefix("#") {
        hexSanitized.removeFirst()
    }
    
    var rgb: UInt64 = 0
    Scanner(string: hexSanitized).scanHexInt64(&rgb)
    
    let red = Double((rgb & 0xFF0000) >> 16) / 255.0
    let green = Double((rgb & 0x00FF00) >> 8) / 255.0
    let blue = Double(rgb & 0x0000FF) / 255.0
    
    // Return a Color object with the computed RGB values
    return Color(red: red, green: green, blue: blue)
}



func dayDifference(_ startDate: Date, _ endDate: Date) -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: startDate, to: endDate)
    return components.day ?? 0
}

func formatDate(_ date: Date, _ format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
}

public func isEmpty(_ obj: Optional<Any>)->Bool{
    guard let obj else { return true }
    if let obj = obj as? String{
        return obj.isEmpty
    }
    return false
}


let UZ_PHONE_REGEX_FULL: Regex = /^(\+998)\d{9}$/
let UZ_PHONE_REGEX_SHORT: Regex = /^\d{9}$/

public func isFullUzNumber(_ num: String)->Bool{
    if let result = try? UZ_PHONE_REGEX_FULL.wholeMatch(in: num) {
        return true;
    }
    return false
}


public func isShortUzNumber(_ num: String)->Bool{
    if let result = try? UZ_PHONE_REGEX_SHORT.wholeMatch(in: num) {
        return true;
    }
    return false
}

