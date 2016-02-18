/*
"Generic" Map type that will use a command line tool to generic the correct types
*/
library Map_<KEY>_<VALUE> {

  uint size;
  mapping(<KEY> => <VALUE>) map;
  mapping(<KEY> => bool) is_set;

  function add(<KEY> key, <VALUE> value) {
    map[key] = value;
    is_set[key] = true;
    size++;
  }

  function get(<KEY> key) returns (<VALUE>) {
    return map[key];
  }

  function exists(<KEY> key) returns (bool) {
    return is_set[key];
  }

  function remove(<KEY> key) returns (bool) {
    if (exists(key)) {
      map[key] = 0;
      is_set[key] = false;
      size--;
      return true;
    }

    return false;
  }
}
