//
//  RegistrationView.swift
//  TwitterSwiftUI
//
//  Created by YutaNoguchi on 2023/05/30.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var oasseord = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            AuthHeaerView(title1: "Get started.", title2: "Create your acount")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full name", text: $fullname)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $email)
            }
            .padding(32)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                
            } label: {
                HStack {
                    Text("Alreadgy have an account?")
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
