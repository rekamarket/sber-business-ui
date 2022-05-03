open Playroom

let displayName = "H3"
let parentName = HeadingMeta.displayName
let component = "H3"
let description = ""

let tag = HTMLTag(#h3)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  ColorLayerMeta.make(~tag, ~children, ~props),
  FontLayerMeta.make(~tag, ~children, ~props),
] -> Belt.Array.concatMany