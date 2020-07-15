//
//  RateResponse.swift
//  ExchangeRates
//
//  Created by Marcy Vernon on 6/14/19.
//  Copyright © 2019 Marcy Vernon. All rights reserved.
//

import Foundation

struct RatesResponse: Decodable {
  var timestamp: Double
  var rates    : [String : Double]
}
