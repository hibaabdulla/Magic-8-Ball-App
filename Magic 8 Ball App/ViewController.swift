//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Hiba Abdulla on 3/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
changeBallImage()
    }

    @IBAction func askButton(_ sender: UIButton) {
        changeBallImage()
       
    }
    
    func changeBallImage() {
        let randomNumber = arc4random_uniform(5)
        
        ballImage.image = UIImage(named: ballImagesArray[Int(randomNumber)])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
    
}

