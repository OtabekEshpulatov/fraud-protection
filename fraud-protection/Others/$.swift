//
//  4.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//


import SwiftUI

public var deviceColorScheme: String? {
   return getEnv("colorScheme")
}




public func getEnv(_ name: String) -> String? {
    let environment = ProcessInfo.processInfo.environment
    return environment[name]
}

public let staticArticles = [
    Article(
        title: "7 Strategies for Data Privacy Protection",
        content: "In the digital age, data privacy is more important than ever. Start by using encrypted storage solutions that keep your personal and sensitive data safe from unauthorized access. Be mindful when granting app permissions, only allowing access to what is absolutely necessary for an app's functionality. Regularly clear cookies and browser cache to avoid being tracked by websites. Always ensure that your devices and software are updated with the latest security patches to protect against vulnerabilities. Avoid using public Wi-Fi networks for sensitive transactions, and if it is unavoidable, use a VPN to secure your connection. Use strong and unique passwords for all your accounts, and enable two-factor authentication wherever possible for an added layer of security.",
        previewImagePath: "article-image-5",
        readMinutes: 4,
        createdAt: Date(timeIntervalSinceNow: -86400 * 1) // 1 day ago
    ),
    Article(
        title: "Top 5 Ways to Avoid Phishing Scams",
        content: "Phishing scams remain one of the most common cybersecurity threats, but they are also among the easiest to avoid with proper vigilance. Always verify the sender's email address to ensure it is legitimate, especially when receiving unexpected messages. Never click on links or download attachments from unknown or untrusted sources, as they can lead to malicious websites or download malware. Manually type website URLs into your browser instead of relying on links in emails. Keep your operating system and software up to date to ensure you are protected against known vulnerabilities. Utilize email providers that offer robust spam filters to block potentially harmful messages, and always be cautious when asked to provide sensitive information such as login credentials or payment details.",
        previewImagePath: "article-image-4",
        readMinutes: 3,
        createdAt: Date(timeIntervalSinceNow: -86400 * 3) // 3 days ago
    ),
    Article(
        title: "How to Secure Your Social Media Accounts",
        content: "Social media platforms are a prime target for hackers, but you can take steps to secure your accounts effectively. Use strong and unique passwords for each of your accounts, and update them regularly to reduce the risk of being compromised. Enable two-factor authentication on all your accounts for an added layer of security. Be cautious about clicking on links, even if they appear to come from a friend, as their account may have been compromised. Avoid oversharing personal information that could be used to impersonate you or answer security questions. Regularly review your privacy settings to control who can see your posts, and ensure you log out of your accounts on public or shared devices to prevent unauthorized access.",
        previewImagePath: "article-image-2",
        readMinutes: 4,
        createdAt: Date(timeIntervalSinceNow: -86400 * 5) // 5 days ago
    ),
    Article(
        title: "5 Tips for Online Shopping Safety",
        content: "Online shopping has become a daily activity for many, but it is important to ensure your transactions are secure. Always shop from trusted websites and look for HTTPS encryption in the website's URL to confirm it is secure. Avoid using public Wi-Fi for shopping, as it is vulnerable to eavesdropping and data theft. Instead, use a private and secure network or a VPN for added safety. Enable two-factor authentication on your payment accounts to add an additional layer of protection. Monitor your bank and credit card statements regularly to quickly detect any unauthorized transactions. For enhanced security, consider using virtual credit cards or payment systems like PayPal, which help protect your financial information from being exposed.",
        previewImagePath: "article-image-1",
        readMinutes: 3,
        createdAt: Date(timeIntervalSinceNow: -86400 * 7) // 7 days ago
    ),
    Article(
        title: "The Ultimate Guide to Home Cybersecurity",
        content: "Home cybersecurity is crucial to protect your family and personal data from potential threats. Start by setting a strong and unique password for your Wi-Fi router, replacing the default one provided by the manufacturer. Enable your router's built-in firewall and WPA3 encryption for an additional layer of security. Regularly update the firmware on your router and other connected devices to ensure vulnerabilities are patched. Be cautious of phishing emails and avoid clicking on links or downloading attachments from unknown senders. Install antivirus software on your devices to detect and block malware. For added safety, create a guest network for visitors to prevent them from accessing your primary network and sensitive devices.",
        previewImagePath: "article-image-3",
        readMinutes: 5,
        createdAt: Date(timeIntervalSinceNow: -86400 * 10) // 10 days ago
    ),
    Article(
        title: "Advanced Cybersecurity Tips for Small Businesses",
        content: "Small businesses face unique cybersecurity challenges, but with the right strategies, you can safeguard your operations. Begin by training your employees on how to recognize phishing attempts and encouraging them to use strong and unique passwords. Secure all endpoints, such as laptops and mobile devices, with antivirus software and encryption to prevent unauthorized access. Implement a comprehensive network monitoring system to detect unusual activity or potential breaches in real time. Restrict access to sensitive information by enforcing strict access control policies, granting employees only the permissions necessary to perform their roles. Regularly back up your business data to a secure, offsite location to ensure it can be recovered in case of a ransomware attack or other cyber incidents. Consider working with a cybersecurity consultant to conduct a security audit and develop a robust incident response plan.",
        previewImagePath: nil,
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

