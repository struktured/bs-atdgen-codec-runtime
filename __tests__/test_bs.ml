(* Auto-generated from "test.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]
open Test_t

let write_vp = (
  Atdgen_codec_runtime.Encode.make (fun (x : _) -> match x with
    | `A x ->
    Atdgen_codec_runtime.Encode.constr1 "A" (
      Atdgen_codec_runtime.Encode.int
    ) x
    | `B x ->
    Atdgen_codec_runtime.Encode.constr1 "B" (
      Atdgen_codec_runtime.Encode.string
    ) x
  )
)
let read_vp = (
  Atdgen_codec_runtime.Decode.enum
  [
      (
      "A"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.int
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`A x) : _))
        )
      )
    ;
      (
      "B"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.string
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`B x) : _))
        )
      )
  ]
)
let write__2 = (
  Atdgen_codec_runtime.Encode.list (
    write_vp
  )
)
let read__2 = (
  Atdgen_codec_runtime.Decode.list (
    read_vp
  )
)
let write_vpl = (
  write__2
)
let read_vpl = (
  read__2
)
let write_v = (
  Atdgen_codec_runtime.Encode.make (fun (x : v) -> match x with
    | A x ->
    Atdgen_codec_runtime.Encode.constr1 "A" (
      Atdgen_codec_runtime.Encode.int
    ) x
    | B x ->
    Atdgen_codec_runtime.Encode.constr1 "B" (
      Atdgen_codec_runtime.Encode.string
    ) x
  )
)
let read_v = (
  Atdgen_codec_runtime.Decode.enum
  [
      (
      "A"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.int
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((A x) : v))
        )
      )
    ;
      (
      "B"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.string
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((B x) : v))
        )
      )
  ]
)
let write__1 = (
  Atdgen_codec_runtime.Encode.list (
    write_v
  )
)
let read__1 = (
  Atdgen_codec_runtime.Decode.list (
    read_v
  )
)
let write_vl = (
  write__1
)
let read_vl = (
  read__1
)
let write_t = (
  Atdgen_codec_runtime.Encode.tuple3
    (
      Atdgen_codec_runtime.Encode.int
    )
    (
      Atdgen_codec_runtime.Encode.string
    )
    (
      Atdgen_codec_runtime.Encode.float
    )
)
let read_t = (
  Atdgen_codec_runtime.Decode.tuple3
    (
      Atdgen_codec_runtime.Decode.int
    )
    (
      Atdgen_codec_runtime.Decode.string
    )
    (
      Atdgen_codec_runtime.Decode.float
    )
)
let write_int64 = (
  Atdgen_codec_runtime.Encode.int64
)
let read_int64 = (
  Atdgen_codec_runtime.Decode.int64
)
let write__3 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    write_int64
  )
)
let read__3 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    read_int64
  )
)
let write_ro = (
  Atdgen_codec_runtime.Encode.make (fun (t : ro) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"c"
          t.c
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            write_int64
            )
          ~name:"o"
          t.o
      ]
    )
  )
)
let read_ro = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          c =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "c"
            ) json;
          o =
            Atdgen_codec_runtime.Decode.decode
            (
              read_int64
              |> Atdgen_codec_runtime.Decode.fieldOptional "o"
            ) json;
      } : ro)
    )
  )
)
let write_r = (
  Atdgen_codec_runtime.Encode.make (fun (t : r) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"a"
          t.a
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"b"
          t.b
      ]
    )
  )
)
let read_r = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          a =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "a"
            ) json;
          b =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "b"
            ) json;
      } : r)
    )
  )
)
let write__4 = (
  Atdgen_codec_runtime.Encode.nullable (
    Atdgen_codec_runtime.Encode.int
  )
)
let read__4 = (
  Atdgen_codec_runtime.Decode.nullable (
    Atdgen_codec_runtime.Decode.int
  )
)
let write_n = (
  write__4
)
let read_n = (
  read__4
)
