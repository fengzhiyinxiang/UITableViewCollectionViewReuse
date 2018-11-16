#
#  Be sure to run `pod spec lint UITableViewCollectionViewReuse.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "UITableViewCollectionViewReuse"
  s.version      = "0.0.1"
  s.summary      = "UITableViewCollectionViewReuse Project"
  s.platform     = "ios"
  s.ios.deployment_target = "8.0"
  s.description  = <<-DESC
    UITableViewCollectionViewReuse Project UITableViewCollectionViewReuse Project
                   DESC

  s.homepage     = "https://github.com/fengzhiyinxiang/UITableViewCollectionViewReuse"
  s.license      = "MIT"
  s.author             = { "QF" => "fengzhiyinxiang@foxmail.com" }
  s.source       = { :git => "https://github.com/fengzhiyinxiang/UITableViewCollectionViewReuse.git", :tag => "#{s.version}" }
  s.source_files  = "UITableViewCollectionViewReuse"
  s.exclude_files = "Classes/Exclude"
  s.frameworks = "Foundation", "UIKit"

end
