# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'

target 'Order Ahead' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Order Ahead
  pod 'Firebase'
  
  # Add the Firebase pod for Google Analytics
  pod 'Firebase/Analytics'

  # Add the pods for any other Firebase products you want to use in your app
  # For example, to use Firebase Authentication and Cloud Firestore
  pod 'Firebase/Auth'
#  pod 'Firebase/Firestore'
  pod 'Firebase/Functions'
  # pod 'FirebaseFirestore'
  pod 'FirebaseFirestoreSwift'


  # Stripe pods
  pod 'Stripe'
  pod 'StripeTerminal', '~> 2.0'

end

post_install do |installer|
 installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
   config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
  end
 end
end
