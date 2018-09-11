//
//  ViewController.swift
//  Dice
//
//  Created by Erik Barreto de Vera on 10/9/18.
//  Copyright © 2018 Erik Barreto de Vera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var randomDiceIndex1: Int = 0
  var randomDiceIndex2: Int = 0
  let maxDiceNum: Int = 6
  
  @IBOutlet weak var diceImageView1: UIImageView!
  @IBOutlet weak var diceImageView2: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func rollButtonPressed(_ sender: UIButton) {
    randomDiceIndex1 = 1 + Int(arc4random_uniform(UInt32(maxDiceNum)))
    randomDiceIndex2 = 1 + Int(arc4random_uniform(UInt32(maxDiceNum)))
    
    print("Dice 1: \(randomDiceIndex1) \n Dice 2: \(randomDiceIndex2)")
    
    diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
    diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    
    
  }
  
}

