open Playroom

let displayName = "ButtonLink"
let parentName = None
let component = "ButtonLink"
let description = ""
let tag = HTMLTag(#a)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => ButtonLinkLayerMeta.make(~tag, ~children, ~props)
