//
//  DemoPlatformView.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import Flutter
import UIKit
import WebKit

class DemoPlatformView: UIView, FlutterPlatformView {
  
  private var arguments: Any?
  private lazy var webView: WKWebView = {
    return WKWebView()
  }()
  
  func view() -> UIView {
    return self
  }
  
  init(frame: CGRect, arguments args: Any?) {
    super.init(frame: frame)
    self.frame = frame
    self.arguments = args
    self.setup()
  }
  
  override var frame: CGRect {
    get {
      return super.frame
    }
    set {
      super.frame = newValue
      webView.frame = newValue
    }
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setup() {
    addSubview(self.webView)
    webView.frame = self.frame
    guard let arguments = arguments as? [String: String], let urlString = arguments["urlString"], let url = URL(string: urlString) else { return }
    webView.load(URLRequest(url: url))
  }
}
