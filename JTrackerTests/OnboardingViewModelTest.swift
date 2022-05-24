//
//  OnboardingViewModelTest.swift
//  JTrackerTests
//
//  Created by Mehdi MMS on 24/05/2022.
//

import XCTest
@testable import JTracker


class OnboardingViewModelTest: XCTestCase {
    
    var target: OnboardingViewModel!
     
     override func setUp() {
         target = OnboardingViewModel()
     }
     
     func test_initialState() {
         XCTAssertEqual(target.imageName, "1onboarding")
         XCTAssertEqual(target.title, "page 1")
         XCTAssertEqual(target.subtitle, "subtitle 1")
     }
    
    func test_nextPage_goesToPage2() {
        target.nextPage()
        XCTAssertEqual(target.imageName, "2onboarding")
        XCTAssertEqual(target.title, "page 2")
        XCTAssertEqual(target.subtitle, "subtitle 2")
    }
    
    func test_nextPage_goesToPage3() {
        target.nextPage()
        target.nextPage()
        XCTAssertEqual(target.imageName, "1onboarding")
        XCTAssertEqual(target.title, "page 3")
        XCTAssertEqual(target.subtitle, "subtitle 3")
    }


}
