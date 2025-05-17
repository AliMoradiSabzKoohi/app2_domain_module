import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app2_domain_module_method_channel.dart';

abstract class App2DomainModulePlatform extends PlatformInterface {
  /// Constructs a App2DomainModulePlatform.
  App2DomainModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static App2DomainModulePlatform _instance = MethodChannelApp2DomainModule();

  /// The default instance of [App2DomainModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelApp2DomainModule].
  static App2DomainModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [App2DomainModulePlatform] when
  /// they register themselves.
  static set instance(App2DomainModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
