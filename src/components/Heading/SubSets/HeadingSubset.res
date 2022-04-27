@genType
type props = {
  "className": option<string>,

  "color": option<Color.t>,

  "fontFamily": option<FontFamily.t>,
  "fontSize": option<FontSize.t>,
  "fontStyle": option<FontStyle.t>,
  "fontWeight": option<FontWeight.t>,

  "marginBlockEnd": option<MarginBlockEnd.t>,
  "marginBlockStart": option<MarginBlockStart.t>,
  "marginInlineEnd": option<MarginInlineEnd.t>,
  "marginInlineStart": option<MarginInlineStart.t>,

  "paddingBlockEnd": option<PaddingBlockEnd.t>,
  "paddingBlockStart": option<PaddingBlockStart.t>,
  "paddingInlineEnd": option<PaddingInlineEnd.t>,
  "paddingInlineStart": option<PaddingInlineStart.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~className: option<string>,

  ~color: option<Color.t>,

  ~marginBlockEnd: option<MarginBlockEnd.t>,
  ~marginBlockStart: option<MarginBlockStart.t>,
  ~marginInlineEnd: option<MarginInlineEnd.t>,
  ~marginInlineStart: option<MarginInlineStart.t>,

  ~paddingBlockEnd: option<PaddingBlockEnd.t>,
  ~paddingBlockStart: option<PaddingBlockStart.t>,
  ~paddingInlineEnd: option<PaddingInlineEnd.t>,
  ~paddingInlineStart: option<PaddingInlineStart.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~level: HeadingProto.level,
  ~tag: option<HeadingProto.tag>,
  ~className: string,
  ~styleProps: HeadingProto.styleProps,
) => (props: props) => HeadingProto.make({
  "level": level,
  "tag": tag,

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

  // margin
  "marginBlockEnd": switch props["marginBlockEnd"] {
  | Some(s) => s
  | None => styleProps["marginBlockEnd"]
  },
  "marginBlockStart": switch props["marginBlockStart"] {
  | Some(s) => s
  | None => styleProps["marginBlockStart"]
  },
  "marginInlineEnd": switch props["marginInlineEnd"] {
  | Some(s) => s
  | None => styleProps["marginInlineEnd"]
  },
  "marginInlineStart": switch props["marginInlineStart"] {
  | Some(s) => s
  | None => styleProps["marginInlineStart"]
  },

  // padding
  "paddingBlockEnd": switch props["paddingBlockEnd"] {
  | Some(s) => s
  | None => styleProps["paddingBlockEnd"]
  },
  "paddingBlockStart": switch props["paddingBlockStart"] {
  | Some(s) => s
  | None => styleProps["paddingBlockStart"]
  },
  "paddingInlineStart": switch props["paddingInlineStart"] {
  | Some(s) => s
  | None => styleProps["paddingInlineStart"]
  },
  "paddingInlineEnd": switch props["paddingInlineEnd"] {
  | Some(s) => s
  | None => styleProps["paddingInlineEnd"]
  },

  "children": props["children"],
})
