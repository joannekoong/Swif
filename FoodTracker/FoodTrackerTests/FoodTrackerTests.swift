//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Joanne on 11/26/15.
//  Copyright © 2015 joanne. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    func testMealInitialization() {
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
    
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid :(")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings not allowed!")
    }
    
}
