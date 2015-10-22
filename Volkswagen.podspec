Pod::Spec.new do |s|
  s.name         = "Volkswagen"
  s.version      = "0.2.0"
  s.license      = "MIT"
  s.summary      = "Detects when your Xcode tests are being run in a CI server, and makes them pass."
  s.homepage     = "https://github.com/cezheng/Volkswagen-Xcode"
  s.social_media_url   = "https://twitter.com/AdamoCheng"
  s.author             = { "Ce Zheng" => "cezheng.cs@gmail.com" }
  s.source       = { :git => "https://github.com/cezheng/Volkswagen-Xcode.git", :tag => s.version }
  
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"

  s.source_files  = "Volkswagen/*.m"

  s.requires_arc = true

end