# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'


flutter_application_path = '../demo_flutter'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'demo_ios' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for demo_ios
  install_all_flutter_pods(flutter_application_path)
  
end

post_install do |installer|
  flutter_post_install(installer)
end

