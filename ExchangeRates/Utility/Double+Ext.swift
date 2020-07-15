//
//  Double+Ext.swift
//  ExchangeRates
//
//  Created by Marcy Vernon on 6/14/19.
//  Copyright © 2019 Marcy Vernon. All rights reserved.
//

import Foundation

// Truncate Double desired number of decimal places
extension Double {
  func truncate(_ places : Int) -> Double {
    return Double(floor(pow(10.0, Double(places)) * self)/pow(10.0, Double(places)))
  }
}
