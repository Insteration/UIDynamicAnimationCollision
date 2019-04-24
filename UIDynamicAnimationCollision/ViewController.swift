//
//  ViewController.swift
//  UIDynamicAnimationCollision
//
//  Created by Art Karma on 4/24/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

enum Angle {
    case zero // 0
    case fortyFive // 45
    case ninety // 90
    case oneHundredThirtyFive // 145
    case oneHundredEighty  // 180
    case twentyTwentyFive // 225
    case twentySevenTen // 270
    case threeHundredSixty // 360
}

class ViewController: UIViewController {
    
    var square = UIView()
    var animator: UIDynamicAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        square.backgroundColor = .green
        self.view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: self.view)
        let gravity = UIGravityBehavior(items: [square])
        gravity.angle = getAngle(.threeHundredSixty)
        animator.addBehavior(gravity)
    }
    
    func getAngle(_ angle: Angle) -> CGFloat {
        switch angle {
        case .zero:
            return .pi
        case .fortyFive:
            return (3 * .pi) / 4
        case .ninety:
            return .pi / 2
        case .oneHundredThirtyFive:
            return .pi / 4
        case .oneHundredEighty:
            return .pi
        case .twentyTwentyFive:
            return (7 * .pi) / 4
        case .twentySevenTen:
            return (3 * .pi) / 2
        case .threeHundredSixty:
            return (5 * .pi) / 4
        }
    }
    
}

