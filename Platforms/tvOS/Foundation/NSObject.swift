
protocol Copying {
  func copy(withZone zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
protocol Coding {
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SecureCoding : Coding {
  static func supportsSecureCoding() -> Bool
}
extension Object {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObject(forCoder aCoder: Coder) -> AnyObject?
  func replacementObject(forCoder aCoder: Coder) -> AnyObject?
  class func awakeAfter(aDecoder: Coder) -> AnyObject?
  func awakeAfter(aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  @available(tvOS 4.0, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> CFTypeRef?
