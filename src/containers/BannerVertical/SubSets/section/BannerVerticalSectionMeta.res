open Playroom

let displayName = "BannerLong"
let parentName = BannerVerticalMeta.displayName
let component = "BannerLong"
let description = ""
let tag = HTMLTag(#section)

let list: (
  ~tag: string,
  ~children: option<string>,
  ~props: option<array<R.prop>>,
) => array<R.t> = (~tag, ~children, ~props) => BannerVerticalLayerMeta.make(~tag, ~children, ~props)
