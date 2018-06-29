//
//  EditListViewController.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit

class EditListViewController: UIViewController {
  
  var selectedIndexPath : IndexPath!
  @IBOutlet weak var firstName: UITextField!
  @IBOutlet weak var middleName: UITextField!
  @IBOutlet weak var lastName: UITextField!
  @IBOutlet weak var email: UITextField!
  @IBOutlet weak var BusinessEmail: UITextField!
  @IBOutlet weak var mobile: UITextField!
  @IBOutlet weak var businessMobile: UITextField!
  @IBOutlet weak var phone: UITextField!
  @IBOutlet weak var businessPhone: UITextField!
  @IBOutlet weak var note: UITextField!
  @IBOutlet weak var btnSubmit: UIButton!
  @IBOutlet weak var iconView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //set placeholder
    self.iconView.image = UIImage(named: "user")
    self.firstName.placeholder = "firstName"
    self.middleName.placeholder = "middleName"
    self.lastName.placeholder = "lastName"
    self.email.placeholder = "email"
    self.businessPhone.placeholder = "businessPhone"
    self.mobile.placeholder = "mobile"
    self.BusinessEmail.placeholder = "BusinessEmail"
    self.phone.placeholder = "phone"
    self.businessMobile.placeholder = "businessMobile"
    self.note.placeholder = "note"
    
    //set text
    let data = ListDataModel.shared().dataModel.d.results[selectedIndexPath.row]
    self.firstName!.text = data.firstName ?? ""
    self.middleName.text = data.middleName ?? ""
    self.lastName.text = data.lastName ?? ""
    self.email.text = data.email ?? ""
    self.businessPhone.text = data.businessPhone ?? ""
    self.mobile.text = data.mobile ?? ""
    self.BusinessEmail.text = data.businessEmail ?? ""
    self.phone.text = data.phone ?? ""
    self.businessMobile.text = data.businessMobile ?? ""
    self.note.text = data.notes ?? ""
  }
  
  @IBAction func btnSubmitSelected(_ sender: Any) {
    //Submit action to call a PUT API to update the list
  }
}
