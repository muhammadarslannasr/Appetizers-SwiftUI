//
//  AccountView.swift
//  Appetizers
//
//  Created by Muhammad Arslan Nasr on 13/01/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $viewModel.brithdate,displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                    
                }
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
            }
            .navigationTitle("🤣 Account")
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton
            )
        }
    }
}

#Preview {
    AccountView()
}
