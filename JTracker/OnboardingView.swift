//
//  OnboardingView.swift
//  JTracker
//
//  Created by Mehdi MMS on 19/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        NavigationLink(destination: HomeView()) {
                            Text("Skip")
                                .foregroundColor(.white)
                            
                        }
                        .padding()
                    }
                    Image(viewModel.imageName)
                        .resizable()
                        .frame(width: 430, height: 390)
                    
                }
                .background(Color(hex: "#55C26F"))
                
                Spacer()
                
                VStack {
                    Text(viewModel.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(viewModel.subtitle)
                        .padding()
                    
                    Spacer()
                    
                    
                    Button {
                        viewModel.nextPage()
                    } label: {
                        Text("Next")
                    }
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
