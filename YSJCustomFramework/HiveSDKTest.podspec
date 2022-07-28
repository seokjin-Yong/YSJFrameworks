Pod::Spec.new do |spec|
  spec.name         = "HiveSDKTest"
  spec.version      = "0.1.2"
  $hive_sdk_version = "4.16.0.2"
  spec.summary      = "Cocoapods test summary of HiveSDK Test ."
  spec.description  = "Cocoapods test description of HiveSDK Test."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    type: "MIT",
    text: <<-LICENCE
      MIT License

      Copyright (c) 2022 dydsj0920

      Permission is hereby granted, free of charge, to any person obtaining a copy
      of this software and associated documentation files (the "Software"), to deal
      in the Software without restriction, including without limitation the rights
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
      copies of the Software, and to permit persons to whom the Software is
      furnished to do so, subject to the following conditions:

      The above copyright notice and this permission notice shall be included in all
      copies or substantial portions of the Software.

      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
      SOFTWARE.
    LICENCE
  }
  spec.author       = { "seokjin-Yong" => "dydsj0920@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjin-Yong/YSJFrameworks/releases/download/#{spec.version}/HIVE_SDK_iOS_v#{$hive_sdk_version}_withCore.zip" 
  }

  # 4.16.0.2 미만
  # $vendored_frameworks_path = "SDK/framework"
  # spec.vendored_frameworks =  #"#{$vendored_frameworks_path}/HIVE_SDK_Plugin.framework", 
  #                             #"#{$vendored_frameworks_path}/HIVEBase.framework" 
  #                             #"#{$vendored_frameworks_path}/HIVECore.framework" 
  #                             #"#{$vendored_frameworks_path}/HIVEIAPV4.framework",
  #                             #"#{$vendored_frameworks_path}/HIVEProtocol.framework",
  #                             #"#{$vendored_frameworks_path}/HIVEService.framework",
  #                             #"#{$vendored_frameworks_path}/HIVEUI.framework",
  #                             #"#{$vendored_frameworks_path}/ProviderAdapter.framework"

  # 4.16.0.2 이상
  $vendored_frameworks_path = "HIVE_SDK_iOS_v#{$hive_sdk_version}_withCore"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVECore.xcframework", 
                              "#{$vendored_frameworks_path}/HIVEIAPV4.xcframework",
                              "#{$vendored_frameworks_path}/HIVEProtocol.xcframework",
                              "#{$vendored_frameworks_path}/HIVEService.xcramework",
                              "#{$vendored_frameworks_path}/HIVEUI.xcframework",
                              "#{$vendored_frameworks_path}/HIVEBase.xcframework",
                              "#{$vendored_frameworks_path}/ProviderAdapter.xcframework"

  spec.dependency 'SDWebImage', '5.12.5'
  spec.dependency 'FBSDKCoreKit', '12.3.1'
  spec.dependency 'FBSDKLoginKit', '12.3.1'
  spec.dependency 'FBSDKShareKit', '12.3.1'
  spec.dependency 'GoogleSignIn', '6.1.0'
end
