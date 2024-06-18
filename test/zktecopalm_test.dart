import 'package:flutter_test/flutter_test.dart';
import 'package:zktecopalm/zktecopalm.dart';
import 'package:zktecopalm/zktecopalm_platform_interface.dart';
import 'package:zktecopalm/zktecopalm_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZktecopalmPlatform
    with MockPlatformInterfaceMixin
    implements ZktecopalmPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZktecopalmPlatform initialPlatform = ZktecopalmPlatform.instance;

  test('$MethodChannelZktecopalm is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZktecopalm>());
  });

  test('getPlatformVersion', () async {
    Zktecopalm zktecopalmPlugin = Zktecopalm();
    MockZktecopalmPlatform fakePlatform = MockZktecopalmPlatform();
    ZktecopalmPlatform.instance = fakePlatform;

    expect(await zktecopalmPlugin.getPlatformVersion(), '42');
  });
}
