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
    updateDiceImages()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }

  @IBAction func rollButtonPressed(_ sender: UIButton) {
    updateDiceImages()
  }
  
  func randomIndex() -> Int {
    return fixRandom + Int(arc4random_uniform(UInt32(maxDiceNum)))
  }
  
  func updateDiceImages() {
    diceImageView1.image = UIImage(named: "dice\(randomIndex())")
    diceImageView2.image = UIImage(named: "dice\(randomIndex())")
  }
  
}

