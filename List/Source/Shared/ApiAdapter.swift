//
//  ApiAdapter.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit
import Alamofire

class ApiAdapter: NSObject {
  
  var baseUrl = "https://firebasestorage.googleapis.com/v0/b/contacts-8d05b.appspot.com/o/"
  
  //not a good practice to put token in code but no other options
  var token = "431c2754-b3f9-4485-8c5d-0365d5f8f0e5"
  
  //endpoints string enum types
  enum Endpoints : String {
    case contactList = "contacts.json?"
  }
  
  //GET api with different endpoint compatibility
  func get(endpoint : Endpoints, completionHandler: @escaping (NSDictionary?, Error?) -> ()) {
    //not a good practice but no other options
    let url = self.baseUrl + endpoint.rawValue + "alt=media&token=" + self.token
    Alamofire.request(url).responseJSON { (responseData) -> Void in
      switch responseData.result {
      case .success(let value):
        completionHandler(value as? NSDictionary, nil)
      case .failure(let error):
        completionHandler(nil, error)
      }
    }
  }
}
