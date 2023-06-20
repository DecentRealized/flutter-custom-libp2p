import Cocoa
import FlutterMacOS

public class CustomLibP2PPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "custom_libp2p", binaryMessenger: registrar.messenger)
    let instance = CustomLibP2PPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      result(FlutterMethodNotImplemented)
  }
}
