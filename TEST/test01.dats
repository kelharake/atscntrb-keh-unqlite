#include "share/atspre_staload.hats"
#include "share/atspre_define.hats"

staload UN = "prelude/SATS/unsafe.sats"
staload "../SATS/unqlite.sats"


implement main0() = let
  var pdb : unqlite_ptr?
  val rc = unqlite_open(pdb, "test.db", UNQLITE_OPEN_CREATE)
  val () = println!(unqlite_lib_version())
  val () = assertloc(rc = UNQLITE_OK)
  val rc = unqlite_kv_store(pdb, "msg", ~1, string2ptr "hello ", 7L)
  val rc = unqlite_kv_fetch_callback(pdb, "msg", ~1, lam (v, n, s) => UNQLITE_OK where {
    val () = println!(v)
  }, the_null_ptr)
  val rc = unqlite_close(pdb)
in end



