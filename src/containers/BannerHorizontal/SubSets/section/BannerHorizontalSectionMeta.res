open Playroom

let displayName = "BannerWide"
let parentName = BannerHorizontalMeta.displayName -> Some
let component = "BannerWide"
let description = ""
let tag = HTMLTag(#section)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => BannerHorizontalLayerMeta.make(~tag, ~children, ~props)
