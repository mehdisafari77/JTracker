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
        
        let screen = UIScreen.main.bounds
        
        VStack {
            HStack {
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Create Account")
                        .foregroundColor(Color(hex: "#55C26F"))
                    
                }
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Sign in")
                    .font(.largeTitle)
                    .font(.headline)
                    .padding(.bottom)
                
                Text("Fill the fields below with your information")
                    .foregroundColor(Color(hex:"#7D7E8B"))
                
                // Sign up Form
                VStack {
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
                    Button {
                        //
                    } label: {
                        Text("Sign in")
                            .foregroundColor(Color(hex: "#fff"))
                    }
                    .maxWidth()
                    .padding(20)
                    .background(Color(hex: "#55C26F"))
                    .cornerRadius(30)

                }
                .padding()
                
            }
            // Sign up Buttons
            VStack(alignment: .center) {
                Divider()
                Text("Sign in using")
                    .padding()
                
                HStack {
                    Button {
                        //appl sign in
                    } label: {
                        Image("appleIcon")
                            .resizable()
                            .frame(width: screen.width / 6, height: screen.height / 13)
                    }
                    Button {
                        //google sign in
                    } label: {
                        Image("googleIcon")
                            .resizable()
                            .frame(width: screen.width / 6, height: screen.height / 13)
                    }
                }
                    Button {
                        //
                    } label: {
                        Text("Forgot Password?")
                            .foregroundColor(Color(hex: "#262838"))
                    }
                .padding()
            }
            .padding(.top)
            
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
