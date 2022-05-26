//
//  SignInView.swift
//  JTracker
//
//  Created by Mehdi MMS on 26/05/2022.
//

import SwiftUI

struct SignInView: View {
    @State var username: String = ""
    @State var isPrivate: Bool = true
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Create Account")
                }
            }
            
            VStack(alignment: .leading) {
                Text("Sign in")
                    .font(.largeTitle)
                    .font(.headline)
                
                Text("Fill the fields below with your information")
                
                Form {
                    VStack(alignment: .leading) {
                        Text("Email Address")
                        HStack {
                            Image("emailIcon")
                                .padding()
                            TextField("Email...", text: $username)
                                .padding().listRowSeparator(.hidden)
                        }
                        .addBorder(.gray, cornerRadius: 12)
                    
                        Text("Password")
                        
                        HStack {
                            Image("keyIcon")
                                .padding()
                            TextField("Password...", text: $username)
                                .padding()
                        }
                        .addBorder(.gray, cornerRadius: 12)
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("Sign in")
                    }
                    .maxWidth()
                    .padding()
                    .background(Color(hex: "#55C26F"))
                    .cornerRadius(30)
                    
                    
                }
                
                
                Spacer()

                
            }
            
            Spacer()
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
