
@available(tvOS 6.0, *)
let UIStateRestorationViewControllerStoryboardKey: String
@available(tvOS 6.0, *)
let UIApplicationStateRestorationBundleVersionKey: String
@available(tvOS 6.0, *)
let UIApplicationStateRestorationUserInterfaceIdiomKey: String
@available(tvOS 7.0, *)
let UIApplicationStateRestorationTimestampKey: String
@available(tvOS 7.0, *)
let UIApplicationStateRestorationSystemVersionKey: String
protocol UIViewControllerRestoration {
  @available(tvOS 2.0, *)
  static func viewController(withRestorationIdentifierPath identifierComponents: [AnyObject], coder: Coder) -> UIViewController?
}
protocol UIDataSourceModelAssociation {
  @available(tvOS 2.0, *)
  func modelIdentifierForElement(at idx: IndexPath, in view: UIView) -> String?
  @available(tvOS 2.0, *)
  func indexPathForElement(withModelIdentifier identifier: String, in view: UIView) -> IndexPath?
}
protocol UIStateRestoring : ObjectProtocol {
  optional var restorationParent: UIStateRestoring? { get }
  optional var objectRestorationClass: AnyObject.Type? { get }
  optional func encodeRestorableState(withCoder coder: Coder)
  optional func decodeRestorableState(withCoder coder: Coder)
  optional func applicationFinishedRestoringState()
}
protocol UIObjectRestoration {
  static func object(withRestorationIdentifierPath identifierComponents: [String], coder: Coder) -> UIStateRestoring?
}
