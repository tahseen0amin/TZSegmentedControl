# TZSegmentedControl 
[![CI Status](http://img.shields.io/travis/tahseen0amin@gmail.com/TZSegmentedControl.svg?style=flat)](https://travis-ci.org/tahseen0amin@gmail.com/TZSegmentedControl)
[![Version](https://img.shields.io/cocoapods/v/TZSegmentedControl.svg?style=flat)](http://cocoapods.org/pods/TZSegmentedControl)
[![License](https://img.shields.io/cocoapods/l/TZSegmentedControl.svg?style=flat)](http://cocoapods.org/pods/TZSegmentedControl)
[![Platform](https://img.shields.io/cocoapods/p/TZSegmentedControl.svg?style=flat)](http://cocoapods.org/pods/TZSegmentedControl)

Swift alternative of HMSegmentedControl by Hesham Megid. A drop-in replacement for UISegmentedControl mimicking the style of the segmented control used in Google Currents and various other Google products.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- Swift 4.2 and above
- iOS 10 and above

## Installation

TZSegmentedControl is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TZSegmentedControl"
```

## Usage 
Please check code in Example Project to see how you can customize the TZSegmentedControl.

For creating a new TZSegmentedControl
```swift
let titleCont = TZSegmentedControl(sectionTitles: ["TRENDING","EDITOR'S PICKS", "FOR YOU", "VIDEOS", "LANGUAGE" ])
titleCont.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50)
```

 TZSegmentedControl also provide a block to be executed when selected index is changed. Alternativly, you could use `addTarget:action:forControlEvents:`
 ```swift
 titleCont.indexChangeBlock = { (index) in
  debugPrint("Segmented \(titleCont.sectionTitles[index]) is visible now")
 }
 ```
## Screenshot
![screenshot](https://github.com/tahseen0amin/TZSegmentedControl/blob/master/Screen%20Shot%202017-06-14%20at%203.26.53%20PM.png)
## Author
tahseen0amin@gmail.com, tahseen0amin@gmail.com

## License
TZSegmentedControl is available under the MIT license. See the LICENSE file for more info.

## Thanks
Thanks to Hesham Megid whose code in HMSegmentedControl was helpful.
