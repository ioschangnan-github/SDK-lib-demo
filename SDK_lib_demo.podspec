

Pod::Spec.new do |s|
  s.name             = 'SDK_lib_demo'
  s.version          = '0.0.5'
  s.summary          = '这是一个SDK测试demo of SDK_lib_demo.'
  
  s.description      = <<-DESC
TODO: 这是一个SDK测试demo详细描述，我这里要详细描述一下，不然字数少于摘要会报警告.
                       DESC

  s.homepage         = 'https://github.com/ioschangnan-github'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  s.author           = { 'ioschangnan@163.com' => 'APP@hkaspire.cn' }
  s.source           = { :git => 'https://github.com/ioschangnan-github/SDK-lib-demo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'SDK_lib_demo/Classes/**/*'
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency  'AFNetworking'
  s.dependency  'SDWebImage'
  
  s.resource_bundles = {
    'SDK_lib_demo' => ['SDK_lib_demo/Assets/*.png']
  }
  
  
end
