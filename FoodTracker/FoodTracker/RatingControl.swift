//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Joanne on 11/28/15.
//  Copyright © 2015 joanne. All rights reserved.
//

import UIKit

class RatingControl: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        
        button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
        addSubview(button)

    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    func ratingButtonTapped(button: UIButton) {
        print("button pressed :D")
    }

}
