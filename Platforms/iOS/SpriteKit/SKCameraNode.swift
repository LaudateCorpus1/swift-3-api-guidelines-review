
@available(iOS 9.0, *)
class SKCameraNode : SKNode {
  func contains(node: SKNode) -> Bool
  func containedNodeSet() -> Set<SKNode>
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
}