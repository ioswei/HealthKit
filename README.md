# HealthKit
iOS健康数据获取
1.系统版本号要求8.0以上
2.iOS 11配置文件需求
Terminating app due to uncaught exception 'NSInvalidArgumentException',
reason: 'NSHealthUpdateUsageDescription must be set in the app's Info.plist
in order to request write authorization.'
解决办法：
我们要在info.plist文件中声明苹果健康的使用权限，所以在info.plist中添加以下key就可以了。请求写入和请求读取都需要添加!

请求写入
  <key>NSHealthUpdateUsageDescription</key>
 <string>some string value stating the reason</string>
请求读取
   <key>NSHealthShareUsageDescription</key>
   <string>some string value stating the reason</string>
   
3.开启HealthKit

