import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices provideAPIKey: @AIzaSyCJ0vlUNxNkBAFxyE1hRJ3e6wNMn1jkUHE
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
