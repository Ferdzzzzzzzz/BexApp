import UIKit
import Flutter
import GoogleMaps
import flutter_config
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    var flutter_native_splash = 1
    UIApplication.shared.isStatusBarHidden = false

    GMSServices.provideAPIKey(FlutterConfigPlugin.env(for: "MAP_API_KEY"))
    GeneratedPluginRegistrant.register(with: self)
    FirebaseApp.configure()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}