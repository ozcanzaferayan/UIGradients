# UIGradients

[![CI Status](https://img.shields.io/travis/ozcanzaferayan/UIGradients.svg?style=flat)](https://travis-ci.org/ozcanzaferayan/UIGradients)
[![Version](https://img.shields.io/cocoapods/v/UIGradients.svg?style=flat)](https://cocoapods.org/pods/UIGradients)
[![License](https://img.shields.io/cocoapods/l/UIGradients.svg?style=flat)](https://cocoapods.org/pods/UIGradients)
[![Platform](https://img.shields.io/cocoapods/p/UIGradients.svg?style=flat)](https://cocoapods.org/pods/UIGradients)

## Overview

UIGradients project contains list of Gradient colors based on https://uigradients.com/

<img src="https://raw.githubusercontent.com/ozcanzaferayan/UIGradients/master/Screenshots/UIGradients_screen_recording.gif" width="300" alt="UIGradients screen recording">

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation with CocoaPods

UIGradients is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:`

```ruby
pod 'UIGradients'
```

## Usage

Gradients can apply any UIView type item.

### UIButton
```swift
let gradient = GradientType.facebook_messenger.gradientLayerFor(view: btn)
btn.layer.insertSublayer(gradient, at: 0)
```

## Example Project

An example project is included with this repo. To run the example project, clone the repo, and run pod install from the Example directory first.

## Author

Zafer AYAN, ozcanzaferayan@gmail.com

## License

UIGradients is available under the MIT license. See the LICENSE file for more info.
