open BannerHorizontalSectionStyleProps

@module("./BannerHorizontalSectionStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BannerHorizontalSectionMeta)
let className = classNameRoot

@react.component
let make = (
  ~className: option<string>,
  ~background: string,

  ~color: option<Color.t>,
  ~size: option<BannerHorizontalSize.t>,

  ~children: React.element,
  ~description: string,
  ~href: option<string>,
) => BannerHorizontalProto.make(
  ~tag = #section,

  ~className = Cn.make([classNameRoot, switch className {
  | Some(c) => c
  | None => ""
  }]),
  ~background,

  ~color = switch color {
  | Some(s) => s
  | None => styleProps.color
  },

  ~size = switch size {
  | Some(s) => s
  | None => styleProps.size
  },

  ~children,
  ~description,

  ~href = switch href {
    | Some(h) => h
    | None => `Узнать условия`
  },
)
