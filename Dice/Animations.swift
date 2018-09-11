//
//  shakeDice.swift
//  Dice
//
//  Created by Erik Barreto de Vera on 11/9/18.
//  Copyright © 2018 Erik Barreto de Vera. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
  
  func pulsate() {
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 0.25
    pulse.fromValue = 0.95
    pulse.toValue = 1.0
    
    layer.add(pulse, forKey: nil)
  }
  
}

extension UIImageView {
  
  func shake() {
    
    let shake = CABasicAnimation(keyPath: "transform.rotation")
    shake.duration = 0.25
    shake.repeatCount = 3
    shake.autoreverses = true

    shake.fromValue = 0.0
    shake.toValue = 2 * Double.pi
  
    layer.add(shake, forKey: nil)
  }
  
}
