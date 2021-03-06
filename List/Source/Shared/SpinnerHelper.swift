//
//  SpinnerHelper.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit

class SpinnerHelper: UIViewController {
  
  var spinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
  
  override func loadView() {
    //init window
    view = UIView()
    view.backgroundColor = UIColor(white: 0, alpha: 0.3)
    
    //init spinner
    self.spinner.translatesAutoresizingMaskIntoConstraints = false
    self.spinner.startAnimating()
    view.addSubview(self.spinner)
    
    //autolayout
    self.spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    self.spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }
}
