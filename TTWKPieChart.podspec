Pod::Spec.new do |s|
  s.name             = "TTWKPieChart"
  s.version          = "0.1.0"
  s.summary          = "A component that simplifies creating of AppleWatch-style pie charts similar to the ones displayed by the Activity app."
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/touchtribe/TTWKPieChart"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "TouchTribe B.V." => "info@touchtribe.nl" }
  s.source           = { :git => "https://github.com/touchtribe/TTWKPieChart.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
