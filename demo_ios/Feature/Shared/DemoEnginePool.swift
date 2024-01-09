//
//  DemoEnginePool.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import Foundation
import Flutter


class DemoEnginePool: NSObject {
  
  static let shared = DemoEnginePool()
  
  private var engineGroup: FlutterEngineGroup!
  private override init() {
    super.init()
    self.engineGroup = FlutterEngineGroup.init(name: "demo-flutter-engine-group", project: nil)
  }
  
  func makeEngine(entrypoint: String) -> FlutterEngine {
    let options = FlutterEngineGroupOptions()
    options.entrypoint = entrypoint
    return self.makeEngine(options: options)
  }
  
  func makeEngine(options: FlutterEngineGroupOptions?) -> FlutterEngine {
    return engineGroup.makeEngine(with: options)
  }
}
