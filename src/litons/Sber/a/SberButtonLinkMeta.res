open Playroom

let displayName = "SberButtonLink"
let parentName = None
let component = "SberButtonLink"
let description = "Click"
let tag = HTMLTag(#a)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => [
  SberLitonLayerMeta.make(~tag, ~children, ~props),
] -> Belt.Array.concatMany
