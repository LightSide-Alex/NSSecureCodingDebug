//
//  MyCustomClassArchiver.swift
//  NSSecureCodingFramework
//
//  Created by Oleksandr Balan on 2023-03-10.
//

import Foundation

public class MyCustomClassArchiver {
  public init() {}
  
  public func archive(_ objects: [MyCustomClass]) throws -> Data {
    let data = try NSKeyedArchiver.archivedData(withRootObject: objects, requiringSecureCoding: true)
    return data
  }
  
  public func unarchive(encodedData: Data) throws -> [MyCustomClass]? {
    return try NSKeyedUnarchiver.unarchivedObject(ofClasses: [NSArray.self, MyCustomClass.self], from: encodedData) as? [MyCustomClass]
  }
}
