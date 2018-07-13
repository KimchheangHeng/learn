#  图像最佳实践

- 降采样
- 减少调用 `draw` 方法
- `UIView.backgroundColor` 不会产生 backing store
- pattern color 会产生 backing store， 要使用带有 titling image 的 UIImageView 来达到同样效果
- `UIView.maskView` 和 `CALayer.maskLayer` 需要临时的 image buffer， `CALayer.cornerRadius` 不需要临时的 image buffer
- 使用 `UIImage.withRenderingMode(_:)` 设置为 `alwaysTemplate`，可以直接渲染进 frame buffer， 不需要临时的 image buffer
- 使用 `UIGraphicsImageRenderer` ，而不是 `UIGraphicsBeginImageContext()`。 前者支持广域色彩



- [Image and Graphics Best Practices](https://developer.apple.com/wwdc18/219)

