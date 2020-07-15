//
//  FirstViewController.swift
//  ExchangeRates
//
//  Created by Marcy Vernon on 6/24/18.
//  Copyright © 2018 Marcy Vernon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  private var dataModel = ExchangeDataModel()
  private var timer: Timer?
  private var hiddenCount = 5
  
  @IBOutlet weak var buttonGetRates: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    dataModel.getLatestRates()
    buttonGetRates.alpha    = 0.0
    buttonGetRates.isHidden = false
    startTimer()
  }

  
  //MARK: Display next storyboard functions ------------------------
  
  @IBAction func getRates(_ sender: Any) {
    displayTableView()
  }
  
  private func displayTableView () {
    let storyBoard: UIStoryboard = UIStoryboard(name: "table", bundle: nil)
    let exchangeViewController = storyBoard.instantiateViewController(withIdentifier: "ExchangeViewController")
    self.present(exchangeViewController, animated: true, completion: nil)
  }
  
  
  //MARK: Timer functions ------------------------------------------
  
  private func startTimer() {
    if timer == nil {
      timer = Timer.scheduledTimer(timeInterval: 0.20,
                                   target: self,
                                   selector: #selector(fadeInButton),
                                   userInfo: nil,
                                   repeats: true)
    }
  }
  
  private func stopTimer() {
    if timer != nil {
      timer?.invalidate()
      timer = nil
    }
  }
  
    //MARK: Create Fade Button Into View ---------------------------------
  
  @objc private func fadeInButton() {
    if buttonGetRates.alpha == 1.0 {
      stopTimer()
    }
    
    if hiddenCount == 0 {
      buttonGetRates.alpha += 0.1
    } else {
      hiddenCount -= 1
    }
  }
} //end of FirstViewController()
  


