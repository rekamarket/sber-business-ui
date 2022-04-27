@genType
type props = {
  "className": option<string>,

  "color": option<Color.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~className: option<string>,

  ~color: option<Color.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~tag: BannerProto.tag,
  ~className: string,
  ~styleProps: BannerProto.styleProps,
) => (props: props) => BannerProto.make({
  "tag": tag,

  "className": className,

  "color": switch props["color"] {
  | Some(s) => s
  | None => styleProps["color"]
  },

  "children": props["children"],
})
