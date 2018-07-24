#  Use FaceID

1. info.plist 添加 `NSFaceIDUsageDescription` ，说明自己要用
2. 使用 `LAContext`

>  Never use the term passcode. A passcode is used for unlocking the user's iOS device and authenticating with Apple Pay when biometric authentication is disabled.

>  Don't reference Touch ID on a device that supports Face ID. Conversely, don't reference Face ID on a device that supports Touch ID. 

## 参考  
- [Face ID 和 Touch ID 译文 and 集成篇](https://www.jianshu.com/p/032c9f636864)
- [iOS FaceID & TouchID](https://www.jianshu.com/p/c387614b70ce)
- [Authentication](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/authentication/)
- [LocalAuthentication](https://developer.apple.com/documentation/localauthentication)

