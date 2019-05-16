Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "GCMathParser"
s.summary = "GCMathParser lets parse mathematical formulas."
s.requires_arc = true
s.version = "1.0-volvo "
s.license = 'MIT'
s.author = { "Taras Kalapun" => "t.kalapun@gmail.com" }
s.homepage = "https://github.com/xslim/GCMathParser"
s.source = { :git => "https://github.com/volvogroup-mobility/GCMathParser.git",
:tag => "#{s.version}" }
s.source_files = "GCExpressionParser/*"

end
