@genType
type props = {
  ...BannerHorizontalSubset.props,
  "tag": BannerHorizontalProto.tag,
}

@obj external makeProps:(
  ~tag: BannerHorizontalProto.tag,

  ~className: option<string>,

  ~color: option<BannerHorizontalColor.t>,
  ~size: option<BannerHorizontalSize.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~className: string,
  ~styleProps: BannerHorizontalProto.styleProps,
) => (props: props) => BannerHorizontalProto.make({
  "tag": props["tag"],

  "className": className,

  "color": switch props["color"] {
  | Some(s) => s
  | None => styleProps["color"]
  },

  "size": switch props["size"] {
  | Some(s) => s
  | None => styleProps["size"]
  },

  "children": props["children"],
})
