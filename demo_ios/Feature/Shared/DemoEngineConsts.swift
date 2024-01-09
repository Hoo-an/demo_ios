//
//  DemoEngineConsts.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import Foundation

struct DemoEngineEntryPoint {
  static let kFlutterFeatured = "demoFlutterFeatured"
  static let kTextLineThrough = "demoTextLineThrough"
  static let kGif = "demoGif"
  static let kAnimation = "demoAnimation"
  static let kPlatformView = "demoPlatformView"
  static let kScrollToIndex = "demoScrollToIndex"
}

struct DemoEngineChannel {
  static let kCallNativeMethod = "com.demo.callNativeMethod"
}

struct DemoEngineCallNativeMethod {
  static let kPush = "push"
  static let kPop = "pop"
}

struct DemoEngineCallNativePush {
  static let kRouter = "router"
  static let kRouteTextLineThroughScreen = "Text LineThrough"
  static let kRouteGifScreen = "Gif"
  static let kRouteAnimationScreen = "Animation"
  static let kRoutePlatformViewScreen = "Platform View"
  static let kRouteScrollToIndexScreen = "Scroll To Index"
}
