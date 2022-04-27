@genType
type props = {
  "className": option<string>,

  "color": option<BannerVerticalColor.t>,
  "size": option<BannerVerticalSize.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~className: option<string>,

  ~color: option<BannerVerticalColor.t>,
  ~size: option<BannerVerticalSize.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~tag: BannerVerticalProto.tag,
  ~className: string,
  ~styleProps: BannerVerticalProto.styleProps,
) => (props: props) => BannerVerticalProto.make({
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
