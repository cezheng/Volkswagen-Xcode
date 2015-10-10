#Volkswagen for Xcode
[![Build Status](https://travis-ci.org/cezheng/Volkswagen-Xcode.svg)](https://travis-ci.org/cezheng/Volkswagen-Xcode)
Volkswagen for Xcode makes failing test cases pass in CI servers.

This project is inspired by [volkswagen
](https://github.com/auchenberg/volkswagen) for javascript, and [phpunit-vw](https://github.com/hmlb/phpunit-vw) for PHP.

#Example
Tests like these will pass.
##Swift

```swift
import XCTest

class SwiftVolkswagenTests: XCTestCase {
  
  func testAssertTrue() {
    XCTAssertTrue(false);
  }
  
  func testAssertEqual () {
    XCTAssertEqual(1, 2);
  }
}
```
##Objective C

```objc
#import <XCTest/XCTest.h>

@interface VolkswagenTests : XCTestCase

@end

@implementation VolkswagenTests

- (void)testAssertEqualObjects {
  XCTAssertEqualObjects(nil, [NSString new]);
}

- (void)testAssertNotNil {
  XCTAssertNotNil(nil);
}

@end
```
## Requirements
### Use CocoaPods or Carthage
- iOS 8.0+ / Mac OS X 10.9+
- Xcode 7.0

Pure Objective-C projects using Cocoapods should have lower requirements since they don't have to `use_frameworks!`.

### Manually include the source
- I have tested this yet, but this should work with almost all versions of OS in recent years

> Currently using `Volkswagen-Xcode` on iOS only supports Travis CI. More CI environment detection is yet to come. Keep an eye on this [issue](https://github.com/cezheng/Volkswagen-Xcode/issues/1).

#Installation
##CocoaPods
You can use [Cocoapods](http://cocoapods.org/) to install `Volkswagen-Xcode` by adding it to your to your `Podfile`:

```ruby
platform :osx, '10.9'
use_frameworks!

target 'MyTestTarget' do
	pod 'Volkswagen', '~> 0.1.0'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage
Adding the following line to your `Cartfile.private`:

```
github "cezheng/Volkswagen" ~> 0.1.0
```
Run the following command:

```
$ carthage update
```
Then drag the `Volkswagen.framework` built by Carthage into your test target's `Build Phases` -> `Link Binary With Libraries`.

## License

`Volkswagen-Xcode` is released under the MIT license. See [LICENSE](https://github.com/cezheng/Volkswagen-Xcode/blob/master/LICENSE) for details.

