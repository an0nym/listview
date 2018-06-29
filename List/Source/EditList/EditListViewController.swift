//
//  EditListViewController.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit

class EditListViewController: UIViewController {
  
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
  }
}
