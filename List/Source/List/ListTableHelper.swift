//
//  ListTableHelper.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit

protocol ListTableHelperDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}

class ListTableHelper: NSObject {
  
  //Create delegate property
  var dlgt: ListTableHelperDelegate?
  
  override init() {
    super.init()
  }
}

extension ListTableHelper : UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.dlgt?.tableView(tableView, didSelectRowAt: indexPath)
  }
}

extension ListTableHelper : UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier, for: indexPath) as? ListTableViewCell
    return cell!
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
}
