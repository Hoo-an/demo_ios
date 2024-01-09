//
//  ViewController.swift
//  demo_ios
//
//  Created by Herman.An on 2024/1/3.
//

import UIKit

class DemoViewController: UITabBarController {

  enum TabbarTagType: Int {
    case more = 1
    case featured = 2
  }
  
  private lazy var demoNativeViewController: UIViewController = {
    let viewController = DemoNativeViewController()
    viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: TabbarTagType.more.rawValue)
    let navigationViewController = UINavigationController(rootViewController: viewController)
    return navigationViewController
  }()
  
  private lazy var demoFlutterViewController: UIViewController = {
    let viewController = DemoFlutterViewController()
    viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: TabbarTagType.featured.rawValue)
    let navigationViewController = UINavigationController(rootViewController: viewController)
    return navigationViewController
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.white
    self.addChild(demoFlutterViewController)
    self.addChild(demoNativeViewController)
  }


}

