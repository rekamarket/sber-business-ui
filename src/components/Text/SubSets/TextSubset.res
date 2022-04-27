@genType
type props = {
  "className": option<string>,

  "color": option<Color.t>,

  "fontSize": option<FontSize.t>,
  "fontWeight": option<FontWeight.t>,
  "fontFamily": option<FontFamily.t>,
  "fontStyle": option<FontStyle.t>,

  "textTransform": option<TextTransform.t>,

  "children": React.element,
}

@obj external makeProps:(
  ~className: option<string>,

  ~color: option<Color.t>,

  ~fontSize: option<FontSize.t>,
  ~fontWeight: option<FontWeight.t>,
  ~fontFamily: option<FontFamily.t>,
  ~fontStyle: option<FontStyle.t>,

  ~textTransform: option<TextTransform.t>,

  ~children: React.element,
  unit
) => props = ""

let make = (
  ~tag: TextProto.tag,
  ~className: string,
  ~styleProps: TextProto.styleProps,
) => (props: props) => {
  let colorCtx = Color.useColor();
  let fontSizeCtx = FontSize.useFontSize();

  TextProto.make({
    "tag": tag,

    "className": className,

    "color": switch props["color"] {
    | Some(s) => s
    | None => switch colorCtx {
      | Some(l) => l
      | None => styleProps["color"]
      }
    },

    // font
    "fontFamily": switch props["fontFamily"] {
    | Some(s) => s
    | None => styleProps["fontFamily"]
    },
    "fontSize": switch props["fontSize"] {
    | Some(s) => s
    | None => switch fontSizeCtx {
      | Some(l) => l
      | None => styleProps["fontSize"]
      }
    },
    "fontStyle": switch props["fontStyle"] {
    | Some(s) => s
    | None => styleProps["fontStyle"]
    },
    "fontWeight": switch props["fontWeight"] {
    | Some(s) => s
    | None => styleProps["fontWeight"]
    },

    // text
    "textTransform": switch props["textTransform"] {
    | Some(s) => s
    | None => styleProps["textTransform"]
    },

    "children": props["children"],
  })
}
