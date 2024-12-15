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
            Text("lcd-report-submitted-success")
        }else{
            incidentReportView
        }
      
        
    }
    
     var incidentReportView: some View{
         VStack{
             Form{
                 if(!isEmpty(viewModel.errorMessage)){
                     Text(viewModel.errorMessage).foregroundColor(.red)
                 }
        
                    TextField("lcd-full-name", text: $viewModel.fullName)
                    TextField("lcd-phone-number", text: $viewModel.phoneNumber)
                    TextField("lcd-title", text: $viewModel.title)
                    TextField("lcd-description",text:$viewModel.description,axis: .vertical)

                    
                    Section {
                        Button {
                            viewModel.submit()
                        }label: {
                            Text("lcd-submit")
                                .frame(maxWidth: .infinity)
                                .buttonStyle(.borderedProminent)
                        }
                
                }
             }.autocorrectionDisabled()
         }
    
    }
}

#Preview {
    FraudIncidentReportView()
}
