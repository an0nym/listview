//
//  JsonHelper.swift
//  List
//
//  Created by MBadj on 29/06/2018.
//  Copyright © 2018 Mehdi Badjian. All rights reserved.
//

import UIKit
import SwiftyJSON

public func dataFromFile(_ filename: String) -> JSON? {
  let path = Bundle.main.path(forResource: filename, ofType: "json")!
  let jsonString = try? String(contentsOfFile: path, encoding: String.Encoding.utf8)
  let json = JSON(parseJSON: jsonString!)
  return json
}

class JsonHelper: NSObject {

}
