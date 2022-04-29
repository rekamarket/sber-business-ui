@genType
type props = {
  ...BannerVerticalSubset.props,
  "tag": BannerVerticalProto.tag,
}

@obj external makeProps:(
  ~tag: BannerVerticalProto.tag,

  ~className: option<string>,
  ~background: string,

  ~color: option<Color.t>,
  ~size: option<BannerVerticalSize.t>,

  ~children: React.element,
  ~description: React.element,
  unit
) => props = ""

let make = (
  ~className: string,
  ~styleProps: BannerVerticalProto.styleProps,
) => (props: props) => BannerVerticalProto.make({
  "tag": props["tag"],

  "className": className,
  "background": props["background"],

  "color": switch props["color"] {
  | Some(s) => s
  | None => styleProps["color"]
  },

  "size": switch props["size"] {
  | Some(s) => s
  | None => styleProps["size"]
  },

  "children": props["children"],
  "description": props["description"],
})
