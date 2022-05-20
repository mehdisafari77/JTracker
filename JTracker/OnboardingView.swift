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
                        }
                        .padding()
                    }
                    Image("1onboarding")
                        .frame(width: .infinity, height: .infinity, alignment: .center)
                }
                .background(Color(hex: "#55C26F"))
                
                Spacer()
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
