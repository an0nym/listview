//
//  ListTableViewCell.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

  //return identifier as class name string
  static var identifier: String {
    return String(describing: self)
  }
}
