//
//  DemoPlatformViewFactory.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import Flutter
import UIKit

class DemoPlatformViewFactory: NSObject, FlutterPlatformViewFactory {
  
  func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
    return DemoPlatformView(frame: frame, arguments: args);
  }
  
  public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
    return FlutterStandardMessageCodec.sharedInstance()
  }
}

