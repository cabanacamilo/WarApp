//
//  ViewController.swift
//  WarApp
//
//  Created by Camilo Cabana on 9/15/18.
//  Copyright © 2018 Camilo Cabana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var LeftScoreLabel: UILabel!
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var LeftScore = 0
    var RightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DealButton(_ sender: Any) {
        
        // Get random cards
        let LeftCard = arc4random_uniform(13) + 2
        let RigthCard = arc4random_uniform(13) + 2
        
        // Show random cards
        LeftImageView.image = UIImage(named: "card\(LeftCard)")
        RightImageView.image = UIImage(named: "card\(RigthCard)")
        
        // Get score
        if LeftCard > RigthCard{
            LeftScore = LeftScore + 1
            LeftScoreLabel.text = String(LeftScore)
        }
        else if LeftCard < RigthCard{
            RightScore = RightScore + 1
            RightScoreLabel.text = String(RightScore)
        }
    }
    
    
    @IBAction func ResetButton(_ sender: Any) {
        
        // reset score
        RightScore = 0
        LeftScore = 0
        
        LeftScoreLabel.text = String(LeftScore)
        RightScoreLabel.text = String(RightScore)
        
        LeftImageView.image = UIImage(named: "back")
        RightImageView.image = UIImage(named: "back")
        
    }
    

}

