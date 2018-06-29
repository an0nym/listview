//
//  ListViewController.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit
import SnapKit

class ListViewController: UIViewController {

  var tableView = UITableView()
  var listTableHelper : ListTableHelper

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    self.listTableHelper = ListTableHelper.init()
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.configureView()
  }
  
  func configureView () {
    //initiate loader
    //initiate dataModel
    ListDataModel.shared().initWithApi() { (error) in
      if (error is NSError) {
        //failed
      }
      else {
        //succeed
      }
    }
    
    //initiate tableview via code
    self.tableView = UITableView.init(frame: .zero)
    self.tableView.delegate = self.listTableHelper
    self.tableView.dataSource = self.listTableHelper
    self.tableView.separatorStyle = UITableViewCellSeparatorStyle.singleLine
    tableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.identifier)
    self.view.addSubview(self.tableView)
    // set delegate of list table helper to self
    self.listTableHelper.dlgt = self;
    self.layoutConstraints()
  }
  
  func layoutConstraints () {
    self.tableView.snp.makeConstraints { (make) in
      make.size.centerX.centerY.equalTo(self.view)
    }
  }
}

extension ListViewController : ListTableHelperDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(indexPath)
  }
}
