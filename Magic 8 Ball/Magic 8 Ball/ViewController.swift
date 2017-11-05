//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Benjamin on 30/10/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Vars
    var randomImage = 0
    var imageArr = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateRandomBall()
    }

    @IBAction func askBtnPressed(_ sender: Any) {
        updateRandomBall()
    }
    
    func updateRandomBall(){
        randomImage = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: imageArr[randomImage])
    }
}

