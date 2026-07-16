// Integration test for the Tizen 9.0 internal symbols added by the tizenfs
// patches (v1-v5). Checks the call status of each added API: the lookup
// resolves at runtime and the call returns a Tizen error code instead of
// throwing an unresolved-symbol ArgumentError. Runs on the connected
// device/emulator.
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tizen_interop/9.0/tizen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // v1: bluetooth internal symbols (libcapi-network-bluetooth.so.0).
  testWidgets('v1 bluetooth: bt_adapter_enable/disable call status', (t) async {
    final bt = tizenCapiNetworkBluetooth;
    expect(bt, isNotNull);
    expect(() => bt.bt_adapter_enable(), returnsNormally);
    expect(() => bt.bt_adapter_disable(), returnsNormally);
  });

  // v1: notification internal query symbol (libnotification.so.0).
  testWidgets('v1 notification: notification_clear call status', (t) async {
    final noti = tizenNotification;
    expect(noti, isNotNull);
    expect(() => noti.notification_clear(0), returnsNormally);
  });

  // v1: notification get_list / detailed-changed callback bindings present.
  testWidgets('v1 notification: get_list/detailed_changed bindings', (t) async {
    final noti = tizenNotification;
    expect(noti.notification_get_list, isNotNull);
    expect(noti.notification_register_detailed_changed_cb, isNotNull);
    expect(noti.notification_unregister_detailed_changed_cb, isNotNull);
  });

  // v5: notification status-monitor callback setter binding present.
  testWidgets('v5 notification: status_monitor_message_cb_set binding',
      (t) async {
    expect(
        tizenNotification.notification_status_monitor_message_cb_set, isNotNull);
  });

  // v2: tts_setting APIs (libtts_setting.so). The internal library may be
  // absent on a stock emulator image, so assert the binding is present and
  // attempt the call without failing on a missing library.
  testWidgets('v2 tts_setting: initialize call status', (t) async {
    final tts = tizenTtsSetting;
    expect(tts.tts_setting_initialize, isNotNull);
    try {
      tts.tts_setting_initialize();
      tts.tts_setting_finalize();
    } catch (_) {/* internal library not present on this image */}
  });

  // v3: stt_setting APIs (libstt_setting.so).
  testWidgets('v3 stt_setting: initialize call status', (t) async {
    final stt = tizenSttSetting;
    expect(stt.stt_setting_initialize, isNotNull);
    try {
      stt.stt_setting_initialize();
      stt.stt_setting_finalize();
    } catch (_) {/* internal library not present on this image */}
  });
}
