//
//  ViewController.swift
//  Dice
//
//  Created by Erik Barreto de Vera on 10/9/18.
//  Copyright © 2018 Erik Barreto de Vera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var randomDiceIndex : Int = 0
  var randomDiceIndex2 : Int = 0
  let maxDiceNum : Int = 6
  let fixRandom : Int = 1
  
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
    
    diceImageView1.image = UIImage(named: "dice\(randomIndex())")
    diceImageView2.image = UIImage(named: "dice\(randomIndex())")
    
  }
  
  func randomIndex() -> Int {
    return fixRandom + Int(arc4random_uniform(UInt32(maxDiceNum)))
  }
  
}

