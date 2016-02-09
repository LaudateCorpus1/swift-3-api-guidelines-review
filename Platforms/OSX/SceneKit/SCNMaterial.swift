
let SCNLightingModelPhong: String
let SCNLightingModelBlinn: String
let SCNLightingModelLambert: String
let SCNLightingModelConstant: String
enum SCNCullMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case back
  case front
}
enum SCNTransparencyMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case aOne
  case rgbZero
}
@available(OSX 10.11, *)
enum SCNBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case screen
  case replace
}
@available(OSX 10.8, *)
class SCNMaterial : Object, SCNAnimatable, SCNShadable, Copying, SecureCoding {
  var name: String?
  var diffuse: SCNMaterialProperty { get }
  var ambient: SCNMaterialProperty { get }
  var specular: SCNMaterialProperty { get }
  var emission: SCNMaterialProperty { get }
  var transparent: SCNMaterialProperty { get }
  var reflective: SCNMaterialProperty { get }
  var multiply: SCNMaterialProperty { get }
  var normal: SCNMaterialProperty { get }
  @available(OSX 10.11, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(OSX 10.11, *)
  var selfIllumination: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModelName: String
  var isLitPerPixel: Bool
  var isDoubleSided: Bool
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  @available(OSX 10.9, *)
  var readsFromDepthBuffer: Bool
  @available(OSX 10.9, *)
  var fresnelExponent: CGFloat
  @available(OSX 10.11, *)
  var blendMode: SCNBlendMode
  init()
  @available(OSX 10.8, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimationFor(key key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func resumeAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  var program: SCNProgram?
  @available(OSX 10.9, *)
  func handleBindingOf(symbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(OSX 10.9, *)
  func handleUnbindingOf(symbol symbol: String, usingBlock block: SCNBindingBlock? = nil)
  @available(OSX 10.9, *)
  var shaderModifiers: [String : String]?
  @available(OSX 10.8, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}