//
//  OnboardingViewModel.swift
//  JTracker
//
//  Created by Mehdi MMS on 24/05/2022.
//
import Foundation

class OnboardingViewModel: ObservableObject {
    
    @Published var imageName: String = "1onboarding"
    @Published var title: String = "page 1"
    @Published var subtitle: String = "subtitle 1"
    
    private var onboardingPage = 0
    
    func nextPage() {
        onboardingPage += 1
        if onboardingPage == 0 {
            imageName = "1onboarding"
            title = "page 1"
            subtitle = "subtitle 1"
        } else if onboardingPage == 1 {
            imageName = "2onboarding"
            title = "page 2"
            subtitle = "subtitle 2"
        } else if onboardingPage == 2 {
            imageName = "1onboarding"
            title = "page 3"
            subtitle = "subtitle 3"
        }
    }
    
}
