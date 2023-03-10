//
//  MyCustomClassArchiver.swift
//  NSSecureCodingDebug
//
//  Created by Oleksandr Balan on 2023-03-10.
//

import Foundation

class MyCustomClassArchiver {
  func archive(_ object: MyCustomClass) throws -> Data {
    let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: true)
    return data
  }
  
  func unarchive(encodedData: Data) throws -> MyCustomClass? {
    return try NSKeyedUnarchiver.unarchivedObject(ofClasses: [MyCustomClass.self], from: encodedData) as? MyCustomClass
  }
}
