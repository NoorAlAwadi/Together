//
//  ViewController.swift
//  Together
//
//  Created by MobileProg on 4/4/19.
//  Copyright © 2019 MobileProg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Create a white border with defined width
//        imgView.layer.borderColor = [UIColor Black].CGColor
//        imgView.layer.borderWidth = 1.5;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
   
    @IBOutlet var cityButtons: [UIButton]!
    
    @IBAction func handleSelection(_ sender: UIButton) {
    
        cityButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                
                 button.isHidden = !button.isHidden
                })
           
        }
        
       
       
    }
    
    @IBAction func cityTapped(_ sender: UIButton) {
    }
    
    
//    let layer = CAGradientLayer()
//    layer.frame = view.bounds
//    layer.colors = [UIColor.yellow.cgColor, UIColor.green.cgColor]
//    layer.startPoint = CGPoint(0,0)
//    layer.stopPoint = CGPoint(1,1)
//    view.layer.addSubLayer(layer)


    

}

