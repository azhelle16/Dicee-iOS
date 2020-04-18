//
//  ViewController.swift
//  Dicee
//
//  Created by Maricel Sumulong on 4/7/20.
//  Copyright © 2020 Maricel Sumulong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    var diceArray = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    //var keyword is for something that changes in the code otherwise use let or const
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        diceImageView2.image = #imageLiteral(resourceName: "dice6");
        
        //rollButton.sendActions(for: .touchUpInside)
        
    }

    @IBAction func rollButton(_ sender: UIButton) {
    
        diceImageView1.image = diceArray.randomElement()
    
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

