open Playroom

let displayName = "SberButton"
let parentName = None
let component = "SberButton"
let description = "Click"
let tag = HTMLTag(#button)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  LitonSberLayerMeta.make(~tag, ~children, ~props),
] -> Belt.Array.concatMany
