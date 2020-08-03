# MyRequestLib

[![CI Status](https://img.shields.io/travis/javesp/MyRequestLib.svg?style=flat)](https://travis-ci.org/javesp/MyRequestLib)
[![Version](https://img.shields.io/cocoapods/v/MyRequestLib.svg?style=flat)](https://cocoapods.org/pods/MyRequestLib)
[![License](https://img.shields.io/cocoapods/l/MyRequestLib.svg?style=flat)](https://cocoapods.org/pods/MyRequestLib)
[![Platform](https://img.shields.io/cocoapods/p/MyRequestLib.svg?style=flat)](https://cocoapods.org/pods/MyRequestLib)



## Installation

MyRequestLib is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

To run the example project, clone the repo, and run `pod install` from the Example directory first.


```ruby
pod 'MyRequestLib'
```

## Author

javesp, javierespinoza23@gmail.com

## License

MyRequestLib is available under the MIT license. See the LICENSE file for more info.

## Example

Example about how use the library for request connection HTML

    var connection: RequestConnection? 
    connection = RequestConnection(host: "url")
    connection?.Request (
     for: Object.self,
     path: "path",
     httpMethod: .get,
     completion: {  result in
          DispatchQueue.main.async {
            switch result {
                case let .success(result):
                    /*Code success*/
                    break
                case let .failure(error):
                     /*Code Failure*/
                    break
            }
         }
    }
    )
