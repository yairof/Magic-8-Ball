//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Yairo Fernandez on 12/23/18.
//  Copyright © 2018 Yairo Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        let randomBallNumber = Int.random(in: 1 ... 5)
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }

}

