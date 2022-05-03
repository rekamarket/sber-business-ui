open Playroom

let displayName = "Button"
let parentName = "Button"
let component = "Button"
let description = ""
let tag = HTMLTag(#button)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => ButtonLayerMeta.make(~tag, ~children, ~props)
