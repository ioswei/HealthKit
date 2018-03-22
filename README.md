# HealthKit
iOS健康数据获取
###1.系统版本号要求8.0以上</br>
###2.iOS 11配置文件需求</br>
Terminating app due to uncaught exception 'NSInvalidArgumentException',</br>
reason: 'NSHealthUpdateUsageDescription must be set in the app's Info.plist</br>
in order to request write authorization.'</br>
解决办法：</br>
我们要在info.plist文件中声明苹果健康的使用权限，所以在info.plist中添加以下key就可以了。请求写入和请求读取都需要添加!</br>

请求写入</br>
  <key>NSHealthUpdateUsageDescription</key></br>
 <string>some string value stating the reason</string></br>
请求读取</br>
   <key>NSHealthShareUsageDescription</key></br>
   <string>some string value stating the reason</string></br>
   
###3.开启HealthKit</br>

