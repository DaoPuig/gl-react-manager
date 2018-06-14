require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name         = pkg["name"]
  s.version      = pkg["version"]
  s.summary      = pkg["description"]
  s.requires_arc = true
  s.license      = pkg["license"]
  s.homepage     = pkg["homepage"]
  s.author       = pkg["author"]
  s.source       = { :git => pkg["repository"]["url"],
                     :tag => "v" + pkg["version"] }
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "8.0",'cpp/*.{h,c,cpp,mm}'
  s.requires_arc        = true
  s.framework           = 'OpenGLES'
  s.dependency          'GPUImage'
  s.dependency          'React'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
end
