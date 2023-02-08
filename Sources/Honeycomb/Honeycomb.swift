//
//  Honeycomb.swift
//  Honeycomb
//
//  Created by Woochan Park on 2023/02/08.
//

import Foundation
import UIKit

public struct HoneycombProxy<Base> {
  
  public let base: Base
  
  public init(_ base: Base) {
    self.base = base
  }
}

public protocol HoneycombCompatible: AnyObject {}

extension HoneycombCompatible {
  
  public var hc: HoneycombProxy<Self> {
    
    return HoneycombProxy(self)
  }
}

extension UIImageView: HoneycombCompatible { }
