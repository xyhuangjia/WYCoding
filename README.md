# WYCoding

快速归档 / 解档自定义对象（model）。通过 runtime 遍历属性，省掉手写 `encodeWithCoder:` / `initWithCoder:`。

本仓库基于 [lwy121810/WYCoding](https://github.com/lwy121810/WYCoding)（李卫友，2017）维护，并补充了 Swift Package Manager 支持。

## 环境要求

- iOS 13.0+
- Xcode 15+

## 安装

### Swift Package Manager

```swift
.package(url: "https://github.com/xyhuangjia/WYCoding.git", from: "1.0.0")
```

### CocoaPods

```ruby
pod 'WYCoding', :git => 'https://github.com/xyhuangjia/WYCoding.git', :tag => '1.0.0'
```

## 使用

给 model 加一行 `WYCodingImplementation`，即可获得归档 / 解档能力：

```objc
#import <WYCoding/NSObject+WYCoding.h>

@interface User : NSObject <NSCoding>
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@end

@implementation User
WYCodingImplementation
@end
```

存取：

```objc
#import <WYCoding/WYFileManager.h>

[WYFileManager setCustomObject:user forKey:@"user"];
User *saved = [WYFileManager getCustomObjectWithKey:@"user"];
```

### 精确控制归档字段

在 model 里实现协议方法即可：

```objc
// 只归档这些属性
+ (NSArray *)wy_allowedCodingPropertyNames { return @[@"name"]; }

// 忽略这些属性
+ (NSArray *)wy_ignoredCodingPropertyNames { return @[@"cache"]; }

// 忽略父类属性
+ (BOOL)wy_ignoreCodingSuperClassPropertyNames { return YES; }
```

### 文件工具

`WYFileManager` 还提供沙盒路径、指定目录存取、缓存清理、文件大小计算等工具方法，详见头文件。

## 许可

上游仓库 [lwy121810/WYCoding](https://github.com/lwy121810/WYCoding) 未声明许可证，本仓库沿用同样的状态：**未授予任何使用、复制、修改或分发许可**。代码公开发布仅为可读性与版本管理方便；如需在商业项目中使用，请先联系原作者取得授权。
