@genType
type props = {
  ...TextContainerSubset.props,
  "tag": TextContainerProto.tag,
}

@obj external makeProps:(
  ~tag: TextContainerProto.tag,

  ~className: option<string>,

  ~color: option<Color.t>,

  ~fontFamily: option<FontFamily.t>,
  ~fontSize: option<FontSize.t>,
  ~fontStyle: option<FontStyle.t>,
  ~fontWeight: option<FontWeight.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~className: string,
  ~styleProps: TextContainerProto.styleProps,
) => (props: props) => TextContainerProto.make({
  "tag": props["tag"],

  "className": className,

  "color": switch props["color"] {
  | Some(s) => s
  | None => styleProps["color"]
  },

  // font
  "fontFamily": switch props["fontFamily"] {
  | Some(s) => s
  | None => styleProps["fontFamily"]
  },
  "fontSize": switch props["fontSize"] {
  | Some(s) => s
  | None => styleProps["fontSize"]
  },
  "fontStyle": switch props["fontStyle"] {
  | Some(s) => s
  | None => styleProps["fontStyle"]
  },
  "fontWeight": switch props["fontWeight"] {
  | Some(s) => s
  | None => styleProps["fontWeight"]
  },

  "children": props["children"],
})
