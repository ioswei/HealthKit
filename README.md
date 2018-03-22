# HealthKit
iOS健康数据获取</br>
### 1.系统版本号要求8.0以上</br>
### 2.iOS 11配置文件需求</br>
Terminating app due to uncaught exception 'NSInvalidArgumentException',</br>
reason: 'NSHealthUpdateUsageDescription must be set in the app's Info.plist</br>
in order to request write authorization.'</br>
解决办法：</br>
我们要在info.plist文件中声明苹果健康的使用权限，所以在info.plist中添加以下key就可以了。请求写入和请求读取都需要添加!</br>

请求写入</br>
 key:NSHealthUpdateUsageDescription</br>
 string:some string value stating the reason</br>
请求读取</br>
 key:NSHealthShareUsageDescription</br>
 string:some string value stating the reason</br>
   
### 3.开启HealthKit</br>
![效果图](https://github.com/ioswei/HealthKit/blob/master/ios健康获取/FC9D2855-4496-4788-A16F-F1120598A6B5.png)
![效果图](https://github.com/ioswei/HealthKit/blob/master/ios健康获取/WX20180322-120022%402x.png)

#### iOS交流群Q群:637387838
