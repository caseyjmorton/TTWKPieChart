Pod::Spec.new do |s|
  s.name             = "TTWKPieChart"
  s.version          = "0.1.0"
  s.summary          = "AppleWatch-style pie charts."
  s.description      = <<-DESC
                        A component that simplifies creating of AppleWatch-style pie charts 
                        similar to the ones displayed by the Activity app.  
                       DESC

  s.homepage         = "https://github.com/touchtribe/TTWKPieChart"
  s.screenshots      = 'https://raw.githubusercontent.com/TouchTribe/TTWKPieChart/master/Screenshot-AppleWatch.gif'
  s.license          = 'MIT'
  s.author           = { "TouchTribe B.V." => "info@touchtribe.nl" }
  s.source           = { :git => "https://github.com/touchtribe/TTWKPieChart.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
