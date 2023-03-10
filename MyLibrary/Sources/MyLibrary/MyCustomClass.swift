import Foundation

public class MyCustomClass: NSObject, NSSecureCoding {
  public static var supportsSecureCoding: Bool {
    return true
  }
  
  var isSecureCoded: Bool
  
  private enum Keys: String {
    case isSecureCoded
  }
  
  public override init() {
    self.isSecureCoded = true
    super.init()
  }
  
  public func encode(with coder: NSCoder) {
    coder.encode(isSecureCoded, forKey: Keys.isSecureCoded.rawValue)
  }
  
  public required init?(coder: NSCoder) {
    isSecureCoded = coder.decodeBool(forKey: Keys.isSecureCoded.rawValue)
  }
  
  public override func isEqual(_ object: Any?) -> Bool {
    if let rhs = object as? MyCustomClass {
      let lhs = self
      return lhs.isSecureCoded == rhs.isSecureCoded
    }
    return false
  }
}
