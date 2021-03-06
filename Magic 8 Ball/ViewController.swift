//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Diwakar Sharma on 4/11/18.
//  Copyright © 2018 Diwakar Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(4))
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

