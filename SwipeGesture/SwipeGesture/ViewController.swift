//
//  ViewController.swift
//  SwipeGesture
//
//  Created by eunhye on 12/07/2019.
//  Copyright © 2019 eunhye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgViewUp: UIImageView!
    
    var img  = [UIImage]()
    var Index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        img.append(UIImage(named:"arrow-up-black")!)
        img.append(UIImage(named: "arrow-up-green")!)
        img.append(UIImage(named: "arrow-up-red")!)
        img.append(UIImage(named: "arrow-down-black")!)
        img.append(UIImage(named: "arrow-down-green")!)
        img.append(UIImage(named: "arrow-down-red")!)
        img.append(UIImage(named: "arrow-left-black")!)
        img.append(UIImage(named: "arrow-left-green")!)
        img.append(UIImage(named: "arrow-left-red")!)
        img.append(UIImage(named: "arrow-right-black")!)
        img.append(UIImage(named: "arrow-right-green")!)
        img.append(UIImage(named: "arrow-right-red")!)
        
        imgViewUp.image = img[Index]
        
        let swipLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipLeft)
        
        let swipRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipRight)
    }
    
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer)
    {

        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            imgViewUp.image = img[Index]
            
            switch swipeGesture.direction
            {
            case UISwipeGestureRecognizer.Direction.left:
                    Index += 1
            case UISwipeGestureRecognizer.Direction.right:
                    Index -= 1
            default:
                break
            }
            
            
            if Index < 0
            {
                Index = 0
            }
            if Index == img.count
            {
                Index = img.count - 1
            }
            
            imgViewUp.image = img[Index]
            print(Index)
        }
        
    }

}

