//
//  DemoFlutterViewController.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import UIKit

class DemoFlutterViewController: UIViewController {
  
  private var flutterTemplateViewController: DemoFlutterTemplateViewController = {
    return DemoFlutterTemplateViewController(entrypoint: DemoEngineEntryPoint.kFlutterFeatured)
  }()
  
  override func viewDidLoad() {
    self.title = "Flutter"
    self.navigationController?.isNavigationBarHidden = true
    addChild(flutterTemplateViewController)
    view.addSubview(flutterTemplateViewController.view)
    flutterTemplateViewController.view.frame = view.frame
    flutterTemplateViewController.didMove(toParent: self)
  }
}
