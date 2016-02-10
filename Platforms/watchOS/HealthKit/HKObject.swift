
@available(watchOS 2.0, *)
class HKObject : Object, SecureCoding {
  var uuid: UUID { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use sourceRevision")
  var source: HKSource { get }
  @available(watchOS 2.0, *)
  var sourceRevision: HKSourceRevision { get }
  @available(watchOS 2.0, *)
  var device: HKDevice? { get }
  var metadata: [String : AnyObject]? { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let HKPredicateKeyPathUUID: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathSource: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathMetadata: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathCorrelation: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathWorkout: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathDevice: String
@available(watchOS 2.0, *)
let HKPredicateKeyPathSourceRevision: String
