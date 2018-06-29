//
//  ListTableHelper.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit

class ListTableHelper: NSObject {

}

extension ListTableHelper : UITableViewDelegate {
  
}

extension ListTableHelper : UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier, for: indexPath) as? ListTableViewCell
    if (cell == nil) {
      cell = ListTableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: ListTableViewCell.identifier)
    }
    return cell!
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 0
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 0
  }
}
