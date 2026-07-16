// Callback test for the 9.0 internal callback APIs added by the tizenfs
// patches. Registers a Dart callback through tizen_interop_callbacks (which
// provides the native trampoline generated into generated_callbacks.cc) and
// passes it to the internal notification callback-registration API, verifying
// the whole path resolves and calls without crashing on the device/emulator.
import 'dart:ffi';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tizen_interop/9.0/tizen.dart';
import 'package:tizen_interop_callbacks/tizen_interop_callbacks.dart';

void _onStatusMessage(Pointer<Char> message, Pointer<Void> data) {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // v5: notification_status_monitor_message_cb_set takes a
  // notification_status_message_cb; register a Dart callback through the
  // generated trampoline and hand it to the internal API.
  testWidgets('v5 notification_status_message_cb: register via trampoline',
      (t) async {
    final callbacks = TizenInteropCallbacks();
    final registered =
        callbacks.register<notification_status_message_cbFunction>(
      'notification_status_message_cb',
      Pointer.fromFunction<notification_status_message_cbFunction>(
          _onStatusMessage),
    );
    expect(registered.interopCallback, isNotNull);

    // Full path: internal API + generated trampoline. Expect a Tizen error
    // code, not an unresolved-symbol crash.
    final ret = tizenNotification.notification_status_monitor_message_cb_set(
        registered.interopCallback, registered.interopUserData);
    expect(ret, isA<int>());

    callbacks.unregister(registered);
  });
}
