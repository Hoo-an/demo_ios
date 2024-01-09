//
//  DemoPlatformPluginRegistrant.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import Flutter

class DemoPlatformPluginRegistrant: NSObject {
  static func register(with engine: FlutterEngine) {
    guard let registrar = engine.registrar(forPlugin: DemoPlatformPlugin.kPluginId) else { return }
    let factory = DemoPlatformViewFactory()
    registrar.register(factory, withId: DemoPlatformPlugin.kFactoryId)
  }
}


