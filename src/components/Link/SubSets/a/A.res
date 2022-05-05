open AStyleProps

@module("./AStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(AMeta)
let className = classNameRoot

@react.component
let make = (
  ~href: string,
  ~className: option<string>=?,

  ~color: option<Color.t>=?,

  ~fontFamily: option<FontFamily.t>=?,
  ~fontSize: option<FontSize.t>=?,
  ~fontStyle: option<FontStyle.t>=?,
  ~fontWeight: option<FontWeight.t>=?,

  ~textDecorationColor: option<TextDecorationColor.t>=?,
  ~textDecorationLine: option<TextDecorationLine.t>=?,
  ~textDecorationStyle: option<TextDecorationStyle.t>=?,
  ~textDecorationThickness: option<TextDecorationThickness.t>=?,

  ~textTransform: option<TextTransform.t>=?,

  ~children: React.element,
) => {
  let fontSizeCtx = FontSize.useFontSize();

  LinkProto.make(
    ~tag = #a,
    ~href,

    ~className = Cn.make([classNameRoot, switch className {
    | Some(c) => c
    | None => ""
    }]),

    ~color = switch color {
    | Some(s) => s
    | None => styleProps.color
    },

    ~fontFamily = switch fontFamily {
    | Some(s) => s
    | None => styleProps.fontFamily
    },
    ~fontSize = switch fontSize {
    | Some(s) => s
    | None => switch fontSizeCtx {
      | Some(l) => l
      | None => styleProps.fontSize
      }
    },
    ~fontStyle = switch fontStyle {
    | Some(s) => s
    | None => styleProps.fontStyle
    },
    ~fontWeight = switch fontWeight {
    | Some(s) => s
    | None => styleProps.fontWeight
    },

    ~textDecorationColor = switch textDecorationColor {
    | Some(s) => s
    | None => styleProps.textDecorationColor
    },
    ~textDecorationLine = switch textDecorationLine {
    | Some(s) => s
    | None => styleProps.textDecorationLine
    },
    ~textDecorationStyle = switch textDecorationStyle {
    | Some(s) => s
    | None => styleProps.textDecorationStyle
    },
    ~textDecorationThickness = switch textDecorationThickness {
    | Some(s) => s
    | None => styleProps.textDecorationThickness
    },

    ~textTransform = switch textTransform {
    | Some(s) => s
    | None => styleProps.textTransform
    },

    ~children,
  )
}
