#
#  Be sure to run `pod spec lint Plum-SDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "Plum-SDK"
  spec.version      = "1.0.1"
  spec.summary      = "SDK For Wellness care"

  spec.description  = "Wellthy helps individuals and families manage and coordinate care for a chronically ill, aging, or disabled loved one."

  spec.homepage     = "https://github.com/Praphin/ivy-sdk"
  spec.license      = "MIT"

  spec.author             = { "PSP" => "sppraphin@gmail.com" }

  spec.platform     = :ios, "15.0"



  spec.source       = { :git => "https://github.com/Praphin/ivy-sdk.git", :tag => spec.version.to_s }

  spec.source_files  = "ivy-sdk/**/*.{swift}"
  spec.swift_versions = "5.0"


end
