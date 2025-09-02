#ifndef __TIZEN_NETWORK_BLUETOOTH_INTERNAL_H__
#define __TIZEN_NETWORK_BLUETOOTH_INTERNAL_H__

#include <bluetooth.h>

#ifdef __cplusplus
extern "C" {
#endif

// Internal symbols exported by libcapi-network-bluetooth.so.0 but not declared
// in the public Bluetooth headers. Declared here (a repo overlay applied on top
// of the fetched rootstrap) so ffigen emits bindings and symgen registers the
// symbols.
int bt_adapter_enable(void);
int bt_adapter_disable(void);

#ifdef __cplusplus
}
#endif

#endif  // __TIZEN_NETWORK_BLUETOOTH_INTERNAL_H__
