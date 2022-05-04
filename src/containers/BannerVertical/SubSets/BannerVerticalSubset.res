@genType
type props = {
  "className": option<string>,
  "background": string,

  "color": option<Color.t>,
  "size": option<BannerVerticalSize.t>,

  "children": React.element,
  "description": string,
  "href": option<string>,
}

@obj external makeProps:(
  ~className: option<string>,
  ~background: string,

  ~color: option<Color.t>,
  ~size: option<BannerVerticalSize.t>,

  ~children: React.element,
  ~description: string,
  ~href: option<string>,
  unit
) => props = ""

let make = (
  ~tag: BannerVerticalProto.tag,
  ~className: string,
  ~styleProps: BannerVerticalProto.styleProps,
) => (props: props) => BannerVerticalProto.make({
  "tag": tag,

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
  "href": switch props["href"] {
    | Some(h) => h
    | None => `Узнать условия`
  },
})
