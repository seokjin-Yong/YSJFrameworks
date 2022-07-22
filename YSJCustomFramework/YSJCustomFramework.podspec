
Pod::Spec.new do |spec|
  spec.name         = "YSJCustomFramework"
  spec.version      = "0.1.1"
  spec.summary      = "YSJCustomFramework developed by YSJ"
  spec.description  = "YSJCustomFramework for using developing app"
  spec.homepage     = "https://github.com/seokjin-Yong/YSJFrameworks"
  spec.license      = "MIT"
  spec.author             = { "seokjin-Yong" => "dydsj0920@gmail.com" }
  
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"
  
  spec.source       = { :git => "https://github.com/seokjin-Yong/YSJFrameworks.git", :tag => spec.version.to_s }
  spec.source_files  = "YSJCustomFramework/**/*.{swift}"
end
