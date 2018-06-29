//
//  ListDataModel.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit
import SwiftyJSON

class ListDataModel: NSObject {
  var jsonModel = ListJsonModel.init()
  
  private static var sharedListDataModel: ListDataModel = {
    let sharedListDataModel = ListDataModel()
    return sharedListDataModel
  }()
  
  class func shared() -> ListDataModel {
    return sharedListDataModel
  }
  
  override init() {
    super.init()
  }
  
  // Initiate data model from json file
  func initWithData(data : String) {
    let data = dataFromFile("home")
    self.jsonModel = ListJsonModel.init(fromJson: data!)
  }
  
  //initiate data model with remote json file
  func initWithRoute(route : String) {
    /*
     **
     **
     **   Implement API Fetch DataModel
     **
     **
     */
  }
}
