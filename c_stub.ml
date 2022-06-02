open Ctypes

module Functions ( F : Ctypes.FOREIGN ) = struct
  open F
  type mnl_socket
  let mnl_socket : mnl_socket structure typ = structure "mnl_socket"
  let mnl_socket_open = foreign "mnl_socket_open" (int @-> returning (ptr_opt mnl_socket))
end

module Types ( F : Ctypes.TYPE ) = struct
end
