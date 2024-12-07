//
//  FraudIncidentReportView.swift
//  fraud-protection
//
//  Created by kebato OS on 07/12/24.
//
import SwiftUI

public struct FraudIncidentReportView: View {
    
    @StateObject
    public var viewModel: FraudIncidentReportViewModel = FraudIncidentReportViewModel()
    
    
    public var body: some View {
        
        if viewModel.submitted {
            Text("Your report has been submitted successfully. Thank you!")
        }else{
            incidentReportView
        }
      
        
    }
    
     var incidentReportView: some View{
         Form{
             if(!isEmpty(viewModel.errorMessage)){
                 Text(viewModel.errorMessage).foregroundColor(.red)
             }
             
                TextField("Full name", text: $viewModel.fullName)
                TextField("Phone number", text: $viewModel.phoneNumber)
                TextField("Title", text: $viewModel.title)
                TextField("Description",text:$viewModel.description,axis: .vertical)

                
                Section {
                    Button {
                        viewModel.submit()
                    }label: {
                        Text("Submit")
                            .frame(maxWidth: .infinity)
                            .buttonStyle(.borderedProminent)
                    }
            
            }
         }.autocorrectionDisabled()
         .navigationTitle("Fraud Incident Report")
         .navigationBarTitleDisplayMode(.automatic)
    }
}
