//
//  DemoNativeViewController.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import UIKit
import WebKit

class DemoNativeViewController: UIViewController {
  
  private lazy var label: UILabel = {
    let label = UILabel()
    label.textAlignment = .center
    label.text = "This is Native screen"
    return label
  }()
  
  override func viewDidLoad() {
    self.title = "Native"
    
    self.view.addSubview(label)
    label.frame = view.frame
  }
}
