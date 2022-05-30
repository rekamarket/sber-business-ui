open BannerVerticalStyleProps

@module("./BannerVerticalStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BannerVerticalMeta)
let className = classNameRoot

external dangerousTagCast: BannerVerticalProto.section => BannerVerticalProto.tag = "%identity"

@react.component
let make = (
  ~tag: option<BannerVerticalProto.section>,
  ~description: string,
  ~background: string,
  ~href: option<string>=?,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~color: option<BannerColor.t>=?,
  ~size: option<BannerVerticalSize.t>=?,

  ~children: React.element,
) => BannerVerticalProto.make(
  ~tag = switch tag {
  | Some(t) => t -> dangerousTagCast
  | None => #section
  },

  ~description,
  ~background,
  ~href = switch href {
    | Some(h) => h
    | None => `Узнать условия`
  },

  ~className = Cn.make([classNameRoot, switch className {
  | Some(c) => c
  | None => ""
  }]),
  ~style = ?style,

  ~color = switch color {
  | Some(s) => s
  | None => styleProps.color
  },

  ~size = switch size {
  | Some(s) => s
  | None => styleProps.size
  },

  ~children,
)
