

Pod::Spec.new do |s|
  s.name             = 'XMTXPodDemo'
  s.version          = '0.1.0'
  s.summary          = 'XMTXPodDemo.'
  s.description      = '这是我做的一个练习cocoapods方法'
  s.homepage         = 'https://github.com/cgmsuccess/XMTXPodDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cgmsuccess@163.com' => 'cgmsuccess@163.com' }
  s.source           = { :git => 'https://github.com/cgmsuccess/XMTXPodDemo.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'XMTXPodDemo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XMTXPodDemo' => ['XMTXPodDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
