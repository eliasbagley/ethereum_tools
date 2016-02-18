/*
"Generic" Map type that will use a command line tool to generic the correct types
*/
library Map_string_string {

  uint size;
  mapping(string => string) map;
  mapping(string => bool) is_set;

  function add(string key, string value) {
    map[key] = value;
    is_set[key] = true;
    size++;
  }

  function get(string key) returns (string) {
    return map[key];
  }

  function exists(string key) returns (bool) {
    return is_set[key];
  }

  function remove(string key) returns (bool) {
    if (exists(key)) {
      map[key] = 0;
      is_set[key] = false;
      size--;
      return true;
    }

    return false;
  }
}
