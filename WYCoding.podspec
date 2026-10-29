Pod::Spec.new do |s|
  s.name             = 'WYCoding'
  s.version          = '1.0.0'
  s.summary          = '一行代码归档/解档任意自定义对象（model）。'
  s.description      = <<-DESC
                        通过 NSObject 分类 + runtime 遍历属性，把自定义对象直接归档到文件或 NSUserDefaults，
                        支持白名单/黑名单属性、忽略父类属性，无需手写 encodeWithCoder:/initWithCoder:。
                       DESC
  s.homepage         = 'https://github.com/xyhuangjia/WYCoding'
  s.license          = { :type => 'Proprietary', :text => <<-LICENSE
                         Copyright (c) 2017 李卫友. All rights reserved.

                         本仓库为上游 lwy121810/WYCoding 的衍生版本，上游未声明开源许可证，
                         因此本仓库同样不授予任何使用、复制、修改或分发许可。
                         LICENSE
                       }
  s.author           = { '李卫友' => 'https://github.com/lwy121810' }
  s.source           = { :git => 'https://github.com/xyhuangjia/WYCoding.git', :tag => s.version.to_s }

  s.platform         = :ios, '15.0'
  s.requires_arc     = true
  s.frameworks       = 'Foundation'

  s.source_files        = 'Sources/WYCoding/**/*.{h,m}'
  s.public_header_files = 'Sources/WYCoding/include/*.h'
end
