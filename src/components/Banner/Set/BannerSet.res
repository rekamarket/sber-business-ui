@genType
type props = {
  ...BannerSubset.props,
  "tag": BannerProto.tag,
}

@obj external makeProps:(
  ~tag: BannerProto.tag,

  ~className: option<string>,

  ~color: option<Color.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~className: string,
  ~styleProps: BannerProto.styleProps,
) => (props: props) => BannerProto.make({
  "tag": props["tag"],

  "className": className,

  "color": switch props["color"] {
  | Some(s) => s
  | None => styleProps["color"]
  },

  "children": props["children"],
})
