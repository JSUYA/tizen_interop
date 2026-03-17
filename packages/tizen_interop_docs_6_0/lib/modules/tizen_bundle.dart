// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenBundle`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libbundle.so.0`.
///
/// Application Framework / Bundle.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_bundle;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Adds a byte sequence type key-value pair into a bundle.
/// @details The bundle will contain a copy of the added byte sequence.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object
/// Parameter key The key
/// Parameter bytes The byte sequence
/// Parameter size The byte sequence size in bytes
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_EXISTS Key already exists
/// @retval #BUNDLE_ERROR_OUT_OF_MEMORY Out of memory
/// @pre @a b must be a valid bundle object.
/// @see bundle_get_byte()
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_byte(b, "foo", "bar\0", 4); // Add a key-value pair
///
/// int number = 12345;
/// bundle_add_byte(b, "number", &number, sizeof(int));
///
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_add_byte(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Void> bytes,
  int size,
) =>
    tizenBundle.bundle_add_byte(
      b,
      key,
      bytes,
      size,
    );

/// @brief Adds an 'array of byte sequences' type key-value pair into a bundle.
/// @since_tizen 5.5
/// @remarks To set the value of the byte array element, you should use bundle_set_byte_array_element().
/// This function is only for creating a buffer of the byte array.
///
/// Parameter   b                       The bundle object
/// Parameter   key                     The key
/// Parameter   len                     The length of the array to be created
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval #BUNDLE_ERROR_NONE Successful
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_EXISTS Key already exists
/// @retval #BUNDLE_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see bundle_get_byte_array()
/// @see bundle_set_byte_array_element()
///
/// Module getter: `tizenBundle`.
int bundle_add_byte_array(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  int len,
) =>
    tizenBundle.bundle_add_byte_array(
      b,
      key,
      len,
    );

/// @brief Adds a string type key-value pair into a bundle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object
/// Parameter key The key
/// Parameter str The string type value
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_EXISTS Key already exists
/// @retval #BUNDLE_ERROR_OUT_OF_MEMORY Out of memory
/// @pre @a b must be a valid bundle object.
/// @see bundle_get_str()
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "foo", "bar"); // Add a key-value pair
///
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_add_str(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Char> str,
) =>
    tizenBundle.bundle_add_str(
      b,
      key,
      str,
    );

/// @brief Adds a strings array type key-value pair into a given bundle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object
/// Parameter key The key
/// Parameter str_array The string type value; if @c NULL, an empty array is created; you can change an item with
/// Parameter len The length of the array
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_EXISTS Key already exists
/// @retval #BUNDLE_ERROR_OUT_OF_MEMORY Out of memory
/// @pre @a b must be a valid bundle object.
/// @see bundle_get_str_array()
///
/// @code
/// #include <bundle.h>
/// char *sa = {"aaa", "bbb", "ccc"}; // String array of length 3
/// bundle *b = bundle_create();
/// bundle_add_str_array(b, "foo", sa, 3); // Add a key-value pair
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_add_str_array(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> str_array,
  int len,
) =>
    tizenBundle.bundle_add_str_array(
      b,
      key,
      str_array,
      len,
    );

/// @brief Creates a bundle object.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// @return The bundle object,
/// @c NULL - Failure
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_OUT_OF_MEMORY Out of memory
/// @see bundle_free()
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_free(b); // Free the bundle
/// @endcode
///
/// Module getter: `tizenBundle`.
ffi.Pointer<bundle> bundle_create() =>
    tizenBundle.bundle_create();

/// @brief Deserializes bundle_raw and gets the bundle object.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// The returned value should be released using bundle_free().
/// Parameter r The bundle_raw data to be converted to bundle object
/// Parameter len The size of @a r
/// @return The bundle object,
/// @c NULL - Failure
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a r must be a valid bundle object.
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "foo_key", "bar_val"); // Add a key-value pair
///
/// bundle_raw *encoded_b;
/// int len;
/// bundle_encode(b, &encoded_b, &len); // Encode b
///
/// bundle *b_dup;
/// b_dup = bundle_decode(encoded_b, len); // Decoded bundle object
///
/// bundle_free(b);
/// free(encoded_b);
/// bundle_free(b_dup);
/// @endcode
///
/// Module getter: `tizenBundle`.
ffi.Pointer<bundle> bundle_decode(
  ffi.Pointer<bundle_raw> r,
  int len,
) =>
    tizenBundle.bundle_decode(
      r,
      len,
    );

/// @brief Deletes a key-value object with the given key.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object
/// Parameter key The given key
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
/// @pre @a b must be a valid bundle object.
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "foo_key", "bar_val"); // Add a key-value pair
/// bundle_del(b, "foo_key"); // Delete "foo_key" from b
///
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_del(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenBundle.bundle_del(
      b,
      key,
    );

/// @brief Duplicates a given bundle object.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// The returned value should be released using bundle_free().
/// Parameter b_from The bundle object to be duplicated
/// @return The new bundle object,
/// @c NULL - Failure
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a b_from must be a valid bundle object.
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "foo_key", "bar_val"); // Add a key-value pair
/// bundle *b_dup = bundle_dup(b); // Duplicate b
///
/// bundle_free(b);
/// bundle_free(b_dup);
/// @endcode
///
/// Module getter: `tizenBundle`.
ffi.Pointer<bundle> bundle_dup(
  ffi.Pointer<bundle> b_from,
) =>
    tizenBundle.bundle_dup(
      b_from,
    );

/// @brief Encodes a bundle to the bundle_raw format (uses base64 format).
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object
/// Output parameter r The returned bundle_raw data(byte data)
/// @a r MUST BE FREED by free(r)
/// Output parameter len The size of @a r (in bytes)
/// @return The size of the raw data
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a b must be a valid bundle object.
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "foo_key", "bar_val"); // Add a key-value pair
/// bundle_raw *r;
/// int len;
/// bundle_encode(b, &r, &len); // Encode b
///
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_encode(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Pointer<bundle_raw>> r,
  ffi.Pointer<ffi.Int> len,
) =>
    tizenBundle.bundle_encode(
      b,
      r,
      len,
    );

/// @brief Iterates a callback function for each key-value pair in a given bundle.
/// @details Supports all types of values.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section. \n
/// This function supports all types.
/// Parameter b The bundle object
/// Parameter iter The iteration callback function
/// Parameter user_data The data for the callback function
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a b must be a valid bundle object.
/// @see bundle_keyval_get_type()
/// @see bundle_keyval_type_is_array()
/// @see bundle_keyval_get_basic_val()
/// @see bundle_keyval_get_array_val()
///
/// @code
/// #include <stdio.h>
/// #include <bundle.h>
/// void
/// sample_cb(const char *key, const int type, const bundle_keyval_t *kv, void *user_data)
/// {
/// void *basic_val = NULL;
/// size_t basic_size = 0;
/// void **array_val = NULL;
/// int array_len = 0;
/// size_t *array_elem_size = NULL;
///
/// printf("Key:%s, Type:%d\n", key, type);
/// if (bundle_keyval_type_is_array(kv)) {
/// bundle_keyval_get_array_val(kv, &array_val, &array_len, &array_elem_size);
/// // Do something
/// }
/// else {
/// bundle_keyval_get_basic_val(kv, &basic_val, &basic_size);
/// // Do something
/// }
/// }
///
/// int main(void)
/// {
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "k1", "v1"); // Add a key-value pair
/// bundle_add_byte(b, "k2", "v2", 3); // Add a key-value pair
/// char *s_arr[] = {"abc", "bcd", "cde"};
/// bundle_add_str_array(b, "k3", s_arr, 3); // Add a key-value pair
/// bundle_foreach(b, sample_cb, NULL); // Iterate sample_cb() for each key/value
///
/// return 0;
/// }
/// @endcode
///
/// Module getter: `tizenBundle`.
void bundle_foreach(
  ffi.Pointer<bundle> b,
  bundle_iterator_t iter,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenBundle.bundle_foreach(
      b,
      iter,
      user_data,
    );

/// @brief Frees the given bundle object with key-value pairs in it.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object to be freed
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a b must be a valid bundle object.
/// @see bundle_create()
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_free(b); // Free the bundle
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_free(
  ffi.Pointer<bundle> b,
) =>
    tizenBundle.bundle_free(
      b,
    );

/// @brief Gets the byte sequence with the given key.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must not free @a bytes.
/// Parameter b The bundle object
/// Parameter key The key
/// Output parameter bytes The byte sequence
/// Output parameter size The byte sequence size in bytes
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
/// @pre @a b must be a valid bundle object.
/// @see bundle_add_byte()
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_byte(b, "foo", "bar\0", 4); // Add a string to the bundle
/// int number = 12345;
/// bundle_add_byte(b, "number", (const void**)&number, sizeof(int)); // Add an integer to the bundle
///
/// unsigned char *v = NULL;
/// size_t v_size;
/// bundle_get_byte(b, "foo", (void**)&v, &v_size); // v = "bar\0"
/// int *n = NULL;
/// size_t n_size;
/// bundle_get_byte(b, "number", (void**)&n, &n_size); // number = 12345
///
/// bundle_free(b); // After freeing b, v and n become a dangling pointer
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_get_byte(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Void>> bytes,
  ffi.Pointer<ffi.Size> size,
) =>
    tizenBundle.bundle_get_byte(
      b,
      key,
      bytes,
      size,
    );

/// @brief Gets the array of byte sequences with the given key.
/// @since_tizen 5.5
/// @remarks You should not release @a byte_array, @a len and @a array_element_size.
/// @a byte_array, @a len and @a array_element_size will be released when the bundle containing them is released with bundle_free().
///
/// Parameter   b                       The bundle object
/// Parameter   key                     The key
/// Output parameter  byte_array              The array pointer of the byte value
/// Output parameter  len                     The array length
/// Output parameter  array_element_size      An array of sizes of each @a byte_array element
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval #BUNDLE_ERROR_NONE Successful
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
///
/// @see bundle_add_byte_array()
/// @see bundle_set_byte_array_element()
///
/// Module getter: `tizenBundle`.
int bundle_get_byte_array(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Void>>> byte_array,
  ffi.Pointer<ffi.UnsignedInt> len,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedInt>> array_element_size,
) =>
    tizenBundle.bundle_get_byte_array(
      b,
      key,
      byte_array,
      len,
      array_element_size,
    );

/// @brief Gets the number of bundle items.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter b The bundle object
/// @return The number of bundle items
/// @pre @a b must be a valid bundle object.
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "key1", "val1"); // Add a key-value pair
/// int count = bundle_get_count(b); // count = 1
/// bundle_add_str(b, "key2", "val2"); // Add another key-value pair
/// count = bundle_get_count(b); // count = 2
///
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_get_count(
  ffi.Pointer<bundle> b,
) =>
    tizenBundle.bundle_get_count(
      b,
    );

/// @brief Gets the string value with the given key.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must not free str.
/// Parameter b The bundle object
/// Parameter key The key
/// Output parameter str The returned value
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
/// @pre @a b must be a valid bundle object.
/// @see bundle_add_str()
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create(); // Create a new bundle object
/// bundle_add_str(b, "foo_key", "bar_val"); // Add a key-value pair
///
/// char *v = NULL;
/// bundle_get_str(b, "foo_key", &v); // v = "bar_val"
///
/// bundle_free(b); // After freeing b, v becomes a dangling pointer
/// v = NULL;
/// @endcode
///
/// Module getter: `tizenBundle`.
int bundle_get_str(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Pointer<ffi.Char>> str,
) =>
    tizenBundle.bundle_get_str(
      b,
      key,
      str,
    );

/// @brief Gets a string array from a given key.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You MUST NOT free or modify the returned string. \n
/// The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter b The bundle object
/// Parameter key The key
/// Output parameter len The array length
/// @return The pointer to the array of strings,
/// @c NULL - Key not found
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
/// @pre @a b must be a valid bundle object.
/// @see bundle_add_str_array()
///
/// @code
/// #include <bundle.h>
/// bundle *b = bundle_create();
/// char *sa = {"aaa", "bbb", "ccc"}; // String array of length 3
/// bundle_add_str_array(b, "foo", sa, 3); // Add a key-value pair
///
/// char **str_array = NULL;
/// int len_str_array = 0;
///
/// str_array=bundle_get_str_array(b, "foo", &len_str_array);
/// // str_array = {"aaa", "bbb", "ccc"}, and len_str_array = 3
///
/// bundle_free(b);
/// @endcode
///
/// Module getter: `tizenBundle`.
ffi.Pointer<ffi.Pointer<ffi.Char>> bundle_get_str_array(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  ffi.Pointer<ffi.Int> len,
) =>
    tizenBundle.bundle_get_str_array(
      b,
      key,
      len,
    );

/// @brief Gets the type of the value with a given key.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter b A bundle
/// Parameter key A key in the bundle
/// @return The type of a key in @a b
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @exception #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
/// @pre @a b must be a valid bundle object.
/// @see bundle_type
///
/// Module getter: `tizenBundle`.
int bundle_get_type(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
) =>
    tizenBundle.bundle_get_type(
      b,
      key,
    );

/// @brief Gets the value array, length of the array, and size of each array item.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter kv A bundle_keyval_t object
/// Output parameter array_val The array pointer of values
/// Output parameter array_len The length of @a array_val
/// Output parameter array_element_size The array of size of each array element
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a kv must be a valid bundle_keyval_t object.
/// @post @a array_val, @a array_len, @a array_element_size are set.
/// @see bundle_foreach()
///
/// Module getter: `tizenBundle`.
int bundle_keyval_get_array_val(
  ffi.Pointer<bundle_keyval_t> kv,
  ffi.Pointer<ffi.Pointer<ffi.Pointer<ffi.Void>>> array_val,
  ffi.Pointer<ffi.UnsignedInt> array_len,
  ffi.Pointer<ffi.Pointer<ffi.Size>> array_element_size,
) =>
    tizenBundle.bundle_keyval_get_array_val(
      kv,
      array_val,
      array_len,
      array_element_size,
    );

/// @brief Gets the value and size of the value from a key-value pair of basic type.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must not free @a val.
/// Parameter kv A bundle_keyval_t object
/// Output parameter val The value
/// Output parameter size The size of @a val
/// @return The operation result
/// @retval #BUNDLE_ERROR_NONE Success
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a kv must be a valid bundle_keyval_t object.
/// @post @a val and @a size are set.
/// @see bundle_foreach()
///
/// Module getter: `tizenBundle`.
int bundle_keyval_get_basic_val(
  ffi.Pointer<bundle_keyval_t> kv,
  ffi.Pointer<ffi.Pointer<ffi.Void>> val,
  ffi.Pointer<ffi.Size> size,
) =>
    tizenBundle.bundle_keyval_get_basic_val(
      kv,
      val,
      size,
    );

/// @brief Gets the type of a key-value pair.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter kv A bundle_keyval_t object
/// @return The type of @a kv,
/// @c -1 - Failure
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a kv must be a valid bundle_keyval_t object.
/// @see bundle_foreach()
///
/// Module getter: `tizenBundle`.
int bundle_keyval_get_type(
  ffi.Pointer<bundle_keyval_t> kv,
) =>
    tizenBundle.bundle_keyval_get_type(
      kv,
    );

/// @brief Determines whether the type of a key-value pair is an array.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks The specific error code can be obtained using the get_last_result() method. Error codes are described in Exception section.
/// Parameter kv A bundle_keyval_t object
/// @return The operation result
/// @c 1 - @a kv is an array
/// @c 0 - @a kv is not an array
/// @exception #BUNDLE_ERROR_NONE Success
/// @exception #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @pre @a kv must be a valid bundle_keyval_t object.
/// @see bundle_foreach()
///
/// Module getter: `tizenBundle`.
int bundle_keyval_type_is_array(
  ffi.Pointer<bundle_keyval_t> kv,
) =>
    tizenBundle.bundle_keyval_type_is_array(
      kv,
    );

/// @brief Sets an element of an array of byte sequences.
/// @details The array will contain its own copy of the added value.
/// @since_tizen 5.5
///
/// Parameter   b                       The bundle object
/// Parameter   key                     The key
/// Parameter   idx                     The index of the array element to be changed
/// Parameter   bytes                   The byte sequence
/// Parameter   size                    The byte sequence size in bytes
/// @return      @c 0 on success,
/// otherwise a negative error value
/// @retval #BUNDLE_ERROR_NONE Successful
/// @retval #BUNDLE_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #BUNDLE_ERROR_KEY_NOT_AVAILABLE Key not available
/// @retval #BUNDLE_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #BUNDLE_ERROR_ARRAY_INDEX_OUT_OF_BOUNDS The index is out of bounds of the array
///
/// @see bundle_add_byte_array()
/// @see bundle_get_byte_array()
///
/// Module getter: `tizenBundle`.
int bundle_set_byte_array_element(
  ffi.Pointer<bundle> b,
  ffi.Pointer<ffi.Char> key,
  int idx,
  ffi.Pointer<ffi.Void> bytes,
  int size,
) =>
    tizenBundle.bundle_set_byte_array_element(
      b,
      key,
      idx,
      bytes,
      size,
    );

