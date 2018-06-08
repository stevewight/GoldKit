#
#  Be sure to run `pod spec lint GoldKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GoldKit"
  s.version      = "0.0.4"
  s.summary      = "Easily create mathematically beautiful user interfaces"

  s.homepage     = "https://github.com/stevewight/GoldKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Steve Wight" => "stevendouglaswight@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/stevewight/GoldKit.git", :tag => "0.0.4" }

  s.source_files  = "GoldKit/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4" }
end
