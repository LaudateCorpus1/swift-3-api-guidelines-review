
@available(iOS 2.0, *)
let urlProtectionSpaceHTTP: String
@available(iOS 2.0, *)
let urlProtectionSpaceHTTPS: String
@available(iOS 2.0, *)
let urlProtectionSpaceFTP: String
let urlProtectionSpaceHTTPProxy: String
let urlProtectionSpaceHTTPSProxy: String
let urlProtectionSpaceFTPProxy: String
let urlProtectionSpaceSOCKSProxy: String
let urlAuthenticationMethodDefault: String
let urlAuthenticationMethodHTTPBasic: String
let urlAuthenticationMethodHTTPDigest: String
let urlAuthenticationMethodHTMLForm: String
@available(iOS 2.0, *)
let urlAuthenticationMethodNTLM: String
@available(iOS 2.0, *)
let urlAuthenticationMethodNegotiate: String
@available(iOS 3.0, *)
let urlAuthenticationMethodClientCertificate: String
@available(iOS 3.0, *)
let urlAuthenticationMethodServerTrust: String
class URLProtectionSpace : Object, SecureCoding, Copying {
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)
  var realm: String? { get }
  var receivesCredentialSecurely: Bool { get }
  var host: String { get }
  var port: Int { get }
  var proxyType: String? { get }
  var `protocol`: String? { get }
  var authenticationMethod: String { get }
  func isProxy() -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
}
extension URLProtectionSpace {
  @available(iOS 3.0, *)
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  @available(iOS 3.0, *)
  var serverTrust: SecTrust? { get }
}