//
//  OnboardingView.swift
//  JTracker
//
//  Created by Mehdi MMS on 19/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            VStack {
                Group {
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: HomeView()) {
                            Text("Skip")
                                .foregroundColor(.white)
                                
                        }
                        .padding()
                    }
                    Image("1onboarding")
                        .resizable()
                        .frame(width: 430, height: 400)

                }
                .background(Color(hex: "#55C26F"))

                Spacer()
                
                VStack {
                    Text("Find Your Dream Job")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("With JTracker you can track all your job needs with simple features")
                        .padding()
                        
                    
                    Spacer()
                    
                }
                .frame(width: 350, height: 300, alignment: .center)
                .padding()
                
                .background(Color(.white))
                
            }
            .navigationBarHidden(true)
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
