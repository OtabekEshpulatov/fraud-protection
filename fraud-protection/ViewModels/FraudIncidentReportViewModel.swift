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

    
    func clearSubmit(){
        errorMessage = ""
        title = ""
        description = ""
        phoneNumber = ""
        fullName = ""
    }
    
    func submit()-> Bool{
        if(validate()){
            // call to API
            return true
        }
        
        return false
    }
    
    func validate() -> Bool{
        if isEmpty(fullName) {
            errorMessage = "Full Name is required"
            return false
        }
        if isEmpty(phoneNumber){
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

