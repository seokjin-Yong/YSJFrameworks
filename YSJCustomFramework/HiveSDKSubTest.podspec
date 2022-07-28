Pod::Spec.new do |spec|
  spec.name         = "HiveSDKSubTest"
  spec.version      = "0.1.3"
  $hive_sdk_version = "4.16.0.2"
  spec.summary      = "Cocoapods test summary of HiveSDKSub Test ."
  spec.description  = "Cocoapods test description of HiveSDKSub Test."
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

  # 4.16.0.2 이상
  $vendored_frameworks_path = "HIVE_SDK_iOS_v#{$hive_sdk_version}_withCore"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAppTrackingTransparency.xcframework",
                              "#{$vendored_frameworks_path}/ProviderAdjust.xcframework",
                              "#{$vendored_frameworks_path}/ProviderAppsFlyer.xcframework",
                              "#{$vendored_frameworks_path}/ProviderLine.xcramework",
                              #"#{$vendored_frameworks_path}/ProviderQQ.xcframework",
                              "#{$vendored_frameworks_path}/ProviderSingular.xcframework",
                              #"#{$vendored_frameworks_path}/ProviderVK.xcframework",
                              #"#{$vendored_frameworks_path}/ProviderWechat.xcframework",
                              "#{$vendored_frameworks_path}/ProviderWeverse.xcframework"
                              #"#{$vendored_frameworks_path}/TencentOpenAPI.xcframework",
                              #"#{$vendored_frameworks_path}/VKSdk.xcframework",
                              #"#{$vendored_frameworks_path}/WXApi.xcframework"

  spec.dependency 'Adjust', '4.29.7'
  spec.dependency 'AppsFlyerFramework', '6.5.2'
  spec.dependency 'Singular-SDK', '11.0.4'
  spec.dependency 'LineSDKSwift', '5.1'
  spec.dependency 'HiveSDKTest', '~> 0.1.3'
end
