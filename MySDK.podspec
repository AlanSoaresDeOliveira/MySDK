Pod::Spec.new do |s|  
    s.name              = 'MySDK-BrScan'
    s.version           = '1.0.0'
    s.summary           = 'A really cool SDK that logs stuff.'
    s.homepage          = 'https://github.com/AlanSoaresDeOliveira/MySDK'

    s.author            = { 'Alan Soares de Oliveira' => 'alan.oliveira19@fatec.sp.gov.br'}
    s.license           = 'MIT'

    s.platform          = :ios
    s.source            = { :git => 'https://github.com/AlanSoaresDeOliveira/MySDK.git', :tag => s.version.to_s }

    s.ios.deployment_target = '14.4'
    s.ios.vendored_frameworks = 'MySDK.framework'
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end 