require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |s|
  s.name         = "RNReactLogging"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["description"]
  s.license      = package["license"]
  s.author       = package["author"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => package["repository"]["url"], :branch => "master" }
  s.source_files  = "RNReactLogging/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

