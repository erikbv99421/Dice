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
