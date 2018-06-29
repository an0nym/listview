//
//	ListJsonModelResult.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class ListJsonModelResult : NSObject, NSCoding{

	var account : String!
	var businessEmail : AnyObject!
	var businessMobile : AnyObject!
	var businessPhone : AnyObject!
	var email : AnyObject!
	var firstName : String!
	var fullName : String!
	var gender : String!
	var iD : String!
	var jobTitleDescription : String!
	var lastName : String!
	var middleName : String!
	var mobile : AnyObject!
	var notes : AnyObject!
	var phone : AnyObject!
	var pictureThumbnailUrl : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		account = json["Account"].stringValue
		businessEmail = json["BusinessEmail"].stringValue
		businessMobile = json["BusinessMobile"].stringValue
		businessPhone = json["BusinessPhone"].stringValue
		email = json["Email"].stringValue
		firstName = json["FirstName"].stringValue
		fullName = json["FullName"].stringValue
		gender = json["Gender"].stringValue
		iD = json["ID"].stringValue
		jobTitleDescription = json["JobTitleDescription"].stringValue
		lastName = json["LastName"].stringValue
		middleName = json["MiddleName"].stringValue
		mobile = json["Mobile"].stringValue
		notes = json["Notes"].stringValue
		phone = json["Phone"].stringValue
		pictureThumbnailUrl = json["PictureThumbnailUrl"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		let dictionary = [String:Any]()
		if account != nil{
			dictionary["Account"] = account
		}
		if businessEmail != nil{
			dictionary["BusinessEmail"] = businessEmail
		}
		if businessMobile != nil{
			dictionary["BusinessMobile"] = businessMobile
		}
		if businessPhone != nil{
			dictionary["BusinessPhone"] = businessPhone
		}
		if email != nil{
			dictionary["Email"] = email
		}
		if firstName != nil{
			dictionary["FirstName"] = firstName
		}
		if fullName != nil{
			dictionary["FullName"] = fullName
		}
		if gender != nil{
			dictionary["Gender"] = gender
		}
		if iD != nil{
			dictionary["ID"] = iD
		}
		if jobTitleDescription != nil{
			dictionary["JobTitleDescription"] = jobTitleDescription
		}
		if lastName != nil{
			dictionary["LastName"] = lastName
		}
		if middleName != nil{
			dictionary["MiddleName"] = middleName
		}
		if mobile != nil{
			dictionary["Mobile"] = mobile
		}
		if notes != nil{
			dictionary["Notes"] = notes
		}
		if phone != nil{
			dictionary["Phone"] = phone
		}
		if pictureThumbnailUrl != nil{
			dictionary["PictureThumbnailUrl"] = pictureThumbnailUrl
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         account = aDecoder.decodeObject(forKey: "Account") as? String
         businessEmail = aDecoder.decodeObject(forKey: "BusinessEmail") as? AnyObject
         businessMobile = aDecoder.decodeObject(forKey: "BusinessMobile") as? AnyObject
         businessPhone = aDecoder.decodeObject(forKey: "BusinessPhone") as? AnyObject
         email = aDecoder.decodeObject(forKey: "Email") as? AnyObject
         firstName = aDecoder.decodeObject(forKey: "FirstName") as? String
         fullName = aDecoder.decodeObject(forKey: "FullName") as? String
         gender = aDecoder.decodeObject(forKey: "Gender") as? String
         iD = aDecoder.decodeObject(forKey: "ID") as? String
         jobTitleDescription = aDecoder.decodeObject(forKey: "JobTitleDescription") as? String
         lastName = aDecoder.decodeObject(forKey: "LastName") as? String
         middleName = aDecoder.decodeObject(forKey: "MiddleName") as? String
         mobile = aDecoder.decodeObject(forKey: "Mobile") as? AnyObject
         notes = aDecoder.decodeObject(forKey: "Notes") as? AnyObject
         phone = aDecoder.decodeObject(forKey: "Phone") as? AnyObject
         pictureThumbnailUrl = aDecoder.decodeObject(forKey: "PictureThumbnailUrl") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if account != nil{
			aCoder.encode(account, forKey: "Account")
		}
		if businessEmail != nil{
			aCoder.encode(businessEmail, forKey: "BusinessEmail")
		}
		if businessMobile != nil{
			aCoder.encode(businessMobile, forKey: "BusinessMobile")
		}
		if businessPhone != nil{
			aCoder.encode(businessPhone, forKey: "BusinessPhone")
		}
		if email != nil{
			aCoder.encode(email, forKey: "Email")
		}
		if firstName != nil{
			aCoder.encode(firstName, forKey: "FirstName")
		}
		if fullName != nil{
			aCoder.encode(fullName, forKey: "FullName")
		}
		if gender != nil{
			aCoder.encode(gender, forKey: "Gender")
		}
		if iD != nil{
			aCoder.encode(iD, forKey: "ID")
		}
		if jobTitleDescription != nil{
			aCoder.encode(jobTitleDescription, forKey: "JobTitleDescription")
		}
		if lastName != nil{
			aCoder.encode(lastName, forKey: "LastName")
		}
		if middleName != nil{
			aCoder.encode(middleName, forKey: "MiddleName")
		}
		if mobile != nil{
			aCoder.encode(mobile, forKey: "Mobile")
		}
		if notes != nil{
			aCoder.encode(notes, forKey: "Notes")
		}
		if phone != nil{
			aCoder.encode(phone, forKey: "Phone")
		}
		if pictureThumbnailUrl != nil{
			aCoder.encode(pictureThumbnailUrl, forKey: "PictureThumbnailUrl")
		}

	}

}