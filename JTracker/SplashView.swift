//
//  SplashView.swift
//  JTracker
//
//  Created by Mehdi MMS on 19/05/2022.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                OnboardingView()
            } else {
                Image("splashLogo")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
