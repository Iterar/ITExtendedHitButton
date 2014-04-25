Pod::Spec.new do |s|
  s.name         = "ITExtendedHitButton"
  s.version      = "0.0.1"
  s.summary      = "UIButton with custom target area"
  s.homepage     = "https://github.com/andresousa/ITExtendedHitButton"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "André" => "andre”@iterar.co" }
  s.source       = { :git => "https://github.com/andresousa/ITExtendedHitButton.git", :tag => "0.0.1" }
  s.platform     = :ios
  s.source_files = 'ITExtendedHitButton'
  s.requires_arc = true  
end
