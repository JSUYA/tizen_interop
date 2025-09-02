#ifndef __NOTIFICATION_INTERNAL_H__
#define __NOTIFICATION_INTERNAL_H__

#include <notification.h>
#include <notification_type.h>

#ifdef __cplusplus
extern "C" {
#endif

// Internal symbols exported by libnotification.so.0 but not declared in the
// public notification headers. Declared here (a repo overlay applied on top of
// the fetched rootstrap) so ffigen emits bindings and symgen registers the
// symbols.
typedef void (*notification_detailed_changed_cb)(void *data,
                                                 notification_type_e type,
                                                 notification_op *op_list,
                                                 int num_op);

int notification_clear(notification_type_e type);
int notification_get_list(notification_type_e type, int count,
                          notification_list_h *list);
int notification_register_detailed_changed_cb(
    notification_detailed_changed_cb callback, void *user_data);
int notification_unregister_detailed_changed_cb(
    notification_detailed_changed_cb callback, void *user_data);

#ifdef __cplusplus
}
#endif

#endif  // __NOTIFICATION_INTERNAL_H__
