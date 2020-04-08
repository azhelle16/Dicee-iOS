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
    //when you rename the variable, break it by right-clicking the image, click the 'X' then reconnect it by dragging the circle with the image
    
    var leftDiceNumber = 1
    var rightDiceNumber = 4
    var diceArray = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    //var keyword is for something that changes in the code otherwise use let or const
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        diceImageView2.image = #imageLiteral(resourceName: "dice6"); //type image literal to show the icon
        //diceImageView2.alpha = 0.5;
        
    }

    @IBAction func rollButton(_ sender: UIButton) {
    
        diceImageView1.image = diceArray.randomElement()
    
        diceImageView2.image = diceArray.randomElement()
        //array.shuffle() can also be used
        
        // can also use Int.random(in: a...z) where a is the start and z is the end of the number
        
        //diceImageView1.image = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")][leftDiceNumber]
        
        //diceImageView2.image = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")][rightDiceNumber]
        
        //leftDiceNumber = leftDiceNumber + 1
        //rightDiceNumber = rightDiceNumber - 1
        
    }
    
}

