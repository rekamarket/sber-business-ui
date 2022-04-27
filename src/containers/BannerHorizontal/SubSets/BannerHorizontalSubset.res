@genType
type props = {
  "className": option<string>,

  "color": option<BannerHorizontalColor.t>,
  "size": option<BannerHorizontalSize.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~className: option<string>,

  ~color: option<BannerHorizontalColor.t>,
  ~size: option<BannerHorizontalSize.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~tag: BannerHorizontalProto.tag,
  ~className: string,
  ~styleProps: BannerHorizontalProto.styleProps,
) => (props: props) => BannerHorizontalProto.make({
  "tag": tag,

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
