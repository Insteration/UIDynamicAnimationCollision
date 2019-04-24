//
//  ViewController.swift
//  UIDynamicAnimationCollision
//
//  Created by Art Karma on 4/24/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

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
//        gravity.gravityDirection = CGVector(dx: -0.1, dy: 0.5)
        animator.addBehavior(gravity)
    }


}

