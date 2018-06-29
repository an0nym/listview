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
  
//  func returnClosure() -> (Int,Int)->Int {
  //initiate data model with remote json file
  func initWithApi(completion: @escaping (_ err: AnyObject) -> Void) {
    let apiAdaptor = ApiAdapter.init()
    apiAdaptor.get(endpoint: ApiAdapter.Endpoints.contactList) { (dictionary, error) in
      if (dictionary != nil) {
        let object = JSON(dictionary!)
        self.jsonModel = ListJsonModel.init(fromJson: object)
      }
      completion(error as AnyObject)
    }
  }
}
