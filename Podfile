# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'RxMoyaExample' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
pod 'RxCocoa', '~> 3.0.0'
pod 'Moya-ModelMapper/RxSwift', '~> 4.1.0'
pod 'RxOptional'


  # Pods for RxMoyaExample

end

post_install do |installer|
            installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
            config.build_settings['ENABLE_TESTABILITY'] = 'YES'
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
