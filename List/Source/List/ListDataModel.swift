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
  var dataModel : ListJsonModel? = nil
  
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
    self.dataModel = ListJsonModel.init(fromJson: data!)
  }
  
  //initiate data model with remote json file
  func initWithApi(completion: @escaping (_ err: AnyObject) -> Void) {
    let apiAdaptor = ApiAdapter.init()
    apiAdaptor.get(endpoint: ApiAdapter.Endpoints.contactList) { (dictionary, error) in
      if (dictionary != nil) {
        let object = JSON(dictionary!)
        self.dataModel = ListJsonModel.init(fromJson: object)
      }
      completion(error as AnyObject)
    }
  }
  
  func numberOfRowsInSection(section: NSInteger) -> NSInteger {
    if (self.dataModel != nil) {
      return self.dataModel!.d.results.count
    }
    else {
      return 0
    }
  }
  
  func numberOfSections() -> NSInteger {
    return 1
  }
  
  func isCompleteProfile(indexPath : IndexPath) -> Bool {
    let data = self.dataModel?.d.results[indexPath.row]
    if (data!.account.isEmpty ||
      data!.businessEmail.isEmpty ||
      data!.businessMobile.isEmpty ||
      data!.businessPhone.isEmpty ||
      data!.email.isEmpty ||
      data!.firstName.isEmpty ||
      data!.fullName.isEmpty ||
      data!.iD.isEmpty ||
      data!.jobTitleDescription.isEmpty ||
      data!.lastName.isEmpty ||
      data!.middleName.isEmpty ||
      data!.mobile.isEmpty ||
      data!.notes.isEmpty ||
      data!.phone.isEmpty ||
      data!.pictureThumbnailUrl.isEmpty) {
      return false
    }
    else {
      return true
    }
  }
}
