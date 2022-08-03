![LOGO](https://github.com/fanta1ty/TTipBoxView/blob/master/ScreenShot/Logo.png)

# TTipBoxView

TTipBoxView is a simple and flexible UI component fully written in Swift. It is developed to help you create a hint/prompt view quickly, saving your time and avoiding having to write many lines of codes.

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-brightgreen)](https://developer.apple.com/swift/)
[![Version](https://img.shields.io/cocoapods/v/TTipBoxView.svg?style=flat)](https://cocoapods.org/pods/TTipBoxView)
[![License](https://img.shields.io/cocoapods/l/TTipBoxView.svg?style=flat)](https://cocoapods.org/pods/TTipBoxView)
[![Platform](https://img.shields.io/cocoapods/p/TTipBoxView.svg?style=flat)](https://cocoapods.org/pods/TTipBoxView)
[![Email](https://img.shields.io/badge/contact-@thinhnguyen12389@gmail.com-blue)](thinhnguyen12389@gmail.com)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TTipBoxView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TTipBoxView'
```

## Usage
```swift
import TTipBoxView
```

1) Initiate ``TTipBoxView``
```swift
let tipBoxView = TTipBoxView()
```

2) To show hint message, please input into ``tipLabel.text`` property
```swift
tipBoxView.tipLabel.text = "Tip: Please remember TTipBoxView when you want to add a tip box view.\n\nYou must be a iOS developer when using this library"
```

3) To show hint image, please add image into ``image`` property
```swift
tipBoxView.image = UIImage(named: "tip")
```

![alt text](https://github.com/fanta1ty/TTipBoxView/blob/master/ScreenShot/Screen%20Shot.png)

## Requirements
- iOS 9.3 or later
- Swift 5.0 or later

## Author

fanta1ty, thinhnguyen12389@gmail.com

## License

TTipBoxView is available under the MIT license. See the LICENSE file for more info.
