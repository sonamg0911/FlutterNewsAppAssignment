import UIKit
import Flutter

class MyIKeys:NSObject, IKeys{
    func getApiKeyWithError(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> String? {
        return "499d83c36f2c4e1cadbb3e2f9a97470e"
    }
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      let rootViewController : FlutterViewController = window?.rootViewController as! FlutterViewController

         // get binaryMessenger
         let binaryMessenger = rootViewController as! FlutterBinaryMessenger
         let api = MyIKeys()
         // set binaryMessenger
      SetUpIKeys(binaryMessenger, api)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
