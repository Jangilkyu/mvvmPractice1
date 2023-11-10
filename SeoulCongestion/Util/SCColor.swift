//
//  SCColor.swift
//  SeoulCongestion
//
//  Created by jangilkyu on 2023/01/29.
//

import Foundation
import UIKit

enum SCColor {
  case white
  case green
  case orange
  case yellow
  case red
  case darkGray
  case bikeGray
  case lightGray
  case addrLightGray
  case bikeViewGray
  case offWhiteGray
  case black
  case blue
  
  var color: UIColor {
    switch self {
    case .white:
      return UIColor(r: 255, g: 255, b: 255)
    case .green:
      return UIColor(r: 56, g: 178, b: 94)
    case .orange:
      return UIColor(r: 236, g: 114, b: 65)
    case .yellow:
      return UIColor(r: 236, g: 148, b: 40)
    case .red:
      return UIColor(r: 196, g: 29, b: 47)
    case .darkGray:
      return UIColor(r: 44, g: 44, b: 44)
    case .bikeGray:
      return UIColor(r: 95, g: 95, b: 95)
    case .lightGray:
      return UIColor(r: 214, g: 214, b: 213)
    case .addrLightGray:
      return UIColor(r: 137, g: 141, b: 149)
    case .bikeViewGray:
      return UIColor(r: 117, g: 117, b: 117)
    case .offWhiteGray:
      return UIColor(r: 240, g: 240, b: 240)
    case .black:
      return UIColor(r: 27, g: 27, b: 27)
    case .blue:
      return UIColor(r: 95, g: 124, b: 216)
    }
  }
}


extension UIColor {
  public convenience init(
    r: Int,
    g: Int,
    b: Int,
    alpha: CGFloat = 1.0
  ) {
    self.init(
      red: CGFloat(r) / 255.0,
      green: CGFloat(g) / 255.0,
      blue: CGFloat(b) / 255.0,
      alpha: alpha
    )
  }
}
