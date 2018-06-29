//
//	ListJsonModel.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ListJsonModel : NSObject, NSCoding{

	var d : ListJsonModelD!

  override init() {
    super.init()
  }

	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		let dJson = json["d"]
		if !dJson.isEmpty{
			d = ListJsonModelD(fromJson: dJson)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if d != nil{
			dictionary["d"] = d.toDictionary()
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         d = aDecoder.decodeObject(forKey: "d") as? ListJsonModelD

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if d != nil{
			aCoder.encode(d, forKey: "d")
		}

	}

}
