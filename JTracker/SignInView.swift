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
                        .foregroundColor(Color(hex: "#55C26F"))

                }
            }
            
            VStack(alignment: .leading) {
                Text("Sign in")
                    .font(.largeTitle)
                    .font(.headline)
                    .padding(.bottom)
                
                Text("Fill the fields below with your information")
                    .foregroundColor(Color(hex:"#7D7E8B"))
                
                Form {
                    VStack(alignment: .leading) {
                        Text("Email Address")
                        HStack {
                            Image("emailIcon")
                                .padding()
                            TextField("Email...", text: $username)
                                .padding(.leading, -10)
                                .listRowSeparator(.hidden)
                        }
                        .addBorder(.gray, cornerRadius: 12)
                    
                        Text("Password")
                        
                        HStack {
                            Image("keyIcon")
                                .padding()
                            TextField("Password...", text: $username)
                                .padding(.leading, -10)
                        }
                        .addBorder(.gray, cornerRadius: 12)
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        Text("Sign in")
                            .foregroundColor(Color(hex: "#fff"))
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
