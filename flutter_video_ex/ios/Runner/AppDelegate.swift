import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let s = self.registrar(forPlugin: "plum")!
    let factory = YSXVideoViewFactory(messenger: s.messenger())
    
    s.register(factory, withId: "com.plum.view")
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
