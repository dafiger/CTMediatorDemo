
platform :ios, '10.0'
#use_frameworks!

target 'TargetActionDemo' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for TargetActionDemo

  	pod "CTMediator"
	pod 'Masonry', '~> 1.1.0'
	#pod 'ReactiveCocoa', '~> 8.0.2'
	#pod 'ReactiveObjC', '~> 3.1.0'
	#pod 'AFNetworking', '~> 3.2.1'
	#pod 'SDWebImage', '~> 4.4.3'
	#pod 'MBProgressHUD', '~> 1.1.0'
	#pod 'SVProgressHUD', '~> 2.2.5'
	#pod 'MJRefresh', '~> 3.1.15.7'
	#pod 'FMDB', '~> 2.7.5'
	#pod 'CocoaAsyncSocket', '~> 7.6.3'

    #pod 'UMengAnalytics-NO-IDFA', '~> 4.2.5'
    #pod 'UMCCommon'
    #pod 'UMCAnalytics'
    #pod 'UMCSecurityPlugins'
	#pod 'BaiduMapKit', '~> 3.2'
end

# 实现post_install Hooks
post_install do |installer|
puts "##### post_install start #####"

  # 1. 遍历项目中所有target
  installer.pods_project.targets.each do |target|
    # 2. 遍历build_configurations
    target.build_configurations.each do |config|
      # 3. 修改build_settings中的ENABLE_BITCODE
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
    
puts "##### post_install end #####"
end
