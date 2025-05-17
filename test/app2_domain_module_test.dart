import 'package:flutter_test/flutter_test.dart';
import 'package:app2_domain_module/app2_domain_module.dart';
import 'package:app2_domain_module/app2_domain_module_platform_interface.dart';
import 'package:app2_domain_module/app2_domain_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApp2DomainModulePlatform
    with MockPlatformInterfaceMixin
    implements App2DomainModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final App2DomainModulePlatform initialPlatform = App2DomainModulePlatform.instance;

  test('$MethodChannelApp2DomainModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApp2DomainModule>());
  });

  test('getPlatformVersion', () async {
    App2DomainModule app2DomainModulePlugin = App2DomainModule();
    MockApp2DomainModulePlatform fakePlatform = MockApp2DomainModulePlatform();
    App2DomainModulePlatform.instance = fakePlatform;

    expect(await app2DomainModulePlugin.getPlatformVersion(), '42');
  });
}
