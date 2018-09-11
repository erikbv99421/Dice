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
  @IBOutlet weak var rollButton: UIButton!
  @IBOutlet var mainView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //updateDiceImages()
    gradient()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    
  }

  @IBAction func rollButtonPressed(_ sender: UIButton) {
    pulseButtonAnimation(sender)
    updateDiceImages()
  }
  
  func randomIndex() -> Int {
    return fixRandom + Int(arc4random_uniform(UInt32(maxDiceNum)))
  }
  
  func updateDiceImages() {
    shakeDices()
    diceImageView1.image = UIImage(named: "dice\(randomIndex())")
    diceImageView2.image = UIImage(named: "dice\(randomIndex())")
    
  }
  
  override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    updateDiceImages()
  }
  
  func gradient() {
    rollButton.layer.cornerRadius = rollButton.frame.size.height/2
    rollButton.layer.masksToBounds = true
    view.setGradientBackground(colorOne: #colorLiteral(red: 0.1294117647, green: 0.1725490196, blue: 0.3098039216, alpha: 1), colorTwo: #colorLiteral(red: 0.1098039216, green: 0.1529411765, blue: 0.2901960784, alpha: 1))
    rollButton.setGradientBackground(colorOne: #colorLiteral(red: 0.4823529412, green: 0.2588235294, blue: 0.9647058824, alpha: 1), colorTwo: #colorLiteral(red: 0.6901960784, green: 0.1176470588, blue: 1, alpha: 1))
  }
  
  func pulseButtonAnimation(_ sender: UIButton) {
    sender.pulsate()
  }
  
  func shakeDices() {
    diceImageView1.image = UIImage(named: "unknown")
    diceImageView2.image = UIImage(named: "unknown")
    diceImageView1.shake()
    diceImageView2.shake()
  }
}

