//
//  FraudIncidentReportViewModel.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//

import Foundation

public class FraudIncidentReportViewModel: ObservableObject {
    
    @Published var fullName: String = ""
    @Published var title: String = ""
    @Published var description: String = ""
    @Published var phoneNumber: String = ""
    
    @Published var errorMessage: String = ""
    @Published var submitted: Bool = false

    
    func submit(){
        if(validate()){
            // call to API
            submitted = true
        }
    }
    
    func validate() -> Bool{
        if isEmpty(fullName) {
            errorMessage = "Full Name is required"
            return false
        }
        if !isFullUzNumber(phoneNumber)
            || !isShortUzNumber(phoneNumber){
            errorMessage = "Invalid phone number"
            return false
        }
        if isEmpty(title) {
            errorMessage = "Title is required"
            return false
        }
        if isEmpty(description) {
            errorMessage = "Description is required"
            return false
        }
        errorMessage = ""
        return true
    }
    
    
}

