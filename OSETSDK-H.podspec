Pod::Spec.new do |s|
  s.name         = "OSETSDK-H"
  s.version      = "6.6.7.8"
  s.summary      = "AdSet广告对接聚合类"
  s.description  = <<-DESC
                    OSETSDK 是一个专业的广告聚合SDK，提供高效的广告展示和收益优化功能。
                    DESC
  s.homepage     = "https://github.com/OSETSDK/OSETSDK-H"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { 'shenshi' => 'yaohaofei@shenshiads.com' }
  
  # 设置最低支持版本
  s.ios.deployment_target = '12.0'
  
  # 源文件配置
  s.source       = {
    :git => 'https://github.com/OSETSDK/OSETSDK-H.git',
    :tag => s.version.to_s
  }
    # 主框架文件
  # 检查 OSETSDK.podspec 关键字段
  s.vendored_frameworks = 'OSETSDK.xcframework'
  
  # 系统框架依赖
  s.frameworks = "Foundation", "UIKit", "AdSupport", "CoreTelephony", "StoreKit", "SystemConfiguration"
  
  # 资源文件
    s.resource_bundles = {
    'OSETResources' => ['OSETSDK.bundle']
  }
  # Swift版本设置
  s.swift_version = '5.0'
  
  # ================= 第三方依赖库 =================
  
  s.dependency 'KSAdSDK'
    s.dependency 'QuMengAdSDK', '<=1.6.0.5'
end
