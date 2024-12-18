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
    
    @State private var reportSubmitted = false
    
    public var body: some View {
        incidentReportView
    }
    
     var incidentReportView: some View{
         VStack{
            
             Form{
                 Text("lcd-help-us-report")
                     .font(.headline).padding()
                 
                 if(!isEmpty(viewModel.errorMessage)){
                     Text(viewModel.errorMessage).foregroundColor(.red)
                 }
        
                    TextField("lcd-full-name", text: $viewModel.fullName)
                    TextField("lcd-phone-number", text: $viewModel.phoneNumber)
                    TextField("lcd-title", text: $viewModel.title)
                    TextField("lcd-description",text:$viewModel.description,axis: .vertical)

                    
                    Section {
                        Button {
                            if viewModel.submit(){
                                reportSubmitted = true
                            }
                        }label:{
                            Text("lcd-submit")
                                .frame(maxWidth: .infinity)
                                .buttonStyle(.borderedProminent)
                        }
                
                }
             }.autocorrectionDisabled()
         }.alert("lcd-report-submitted-success", isPresented: $reportSubmitted){
             Button("lcd-ok", role: .cancel) {
                     viewModel.clearSubmit()
        }
        }
    }
}

#Preview {
    FraudIncidentReportView()
}
