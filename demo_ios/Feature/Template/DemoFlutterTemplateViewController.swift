//
//  DemoFlutterTemplateViewController.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class DemoFlutterTemplateViewController: FlutterViewController {
  
  private var callNativeChannel: FlutterMethodChannel?
  
  init(entrypoint: String) {
    let engine = DemoEnginePool.shared.makeEngine(entrypoint: entrypoint)
    engine.run()
    GeneratedPluginRegistrant.register(with: engine)
    DemoPlatformPluginRegistrant.register(with: engine)
    super.init(engine: engine, nibName: nil, bundle: nil)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configChannel()
  }
  
  private func configChannel() {
    configCallNativeChannel()
  }
  
  private func configCallNativeChannel() {
    callNativeChannel = FlutterMethodChannel(name: DemoEngineChannel.kCallNativeMethod, binaryMessenger: self.engine!.binaryMessenger)
    callNativeChannel?.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
      guard let self = self else { return }
      self.onHandleCallNativeChannel(method: call.method, arguments: call.arguments as? [String:Any])
    }
  }
  
  private func onHandleCallNativeChannel(method: String, arguments: [String:Any]?) {
    if (DemoEngineCallNativeMethod.kPush == method) {
      onCallNativePush(arguments: arguments)
    } else if (DemoEngineCallNativeMethod.kPop == method) {
      onCallNativePop()
    }
  }
  
  private func onCallNativePush(arguments: [String:Any]?) {
    guard let arguments = arguments else { return }
    let router = arguments[DemoEngineCallNativePush.kRouter] as? String
    var entrypoint: String?
    if (DemoEngineCallNativePush.kRouteTextLineThroughScreen == router) {
      entrypoint = DemoEngineEntryPoint.kTextLineThrough
    } else if (DemoEngineCallNativePush.kRouteGifScreen == router) {
      entrypoint = DemoEngineEntryPoint.kGif
    } else if (DemoEngineCallNativePush.kRouteAnimationScreen == router) {
      entrypoint = DemoEngineEntryPoint.kAnimation
    } else if (DemoEngineCallNativePush.kRoutePlatformViewScreen == router) {
      entrypoint = DemoEngineEntryPoint.kPlatformView
    } else if (DemoEngineCallNativePush.kRouteScrollToIndexScreen == router) {
      entrypoint = DemoEngineEntryPoint.kScrollToIndex
    }
    guard let entrypoint = entrypoint else { return }
    let viewController = DemoFlutterTemplateViewController(entrypoint: entrypoint)
    self.navigationController?.pushViewController(viewController, animated: true)
  }
  
  private func onCallNativePop() {
    self.navigationController?.popViewController(animated: true)
  }
}
