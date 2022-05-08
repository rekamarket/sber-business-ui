open BannerHorizontalSectionStyleProps

@module("./BannerHorizontalSectionStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(BannerHorizontalSectionMeta)
let className = classNameRoot

@react.component
let make = (
//  ~nodeRef: option<ReactDOM.domRef>=?,
  ~description: string,
  ~background: string,
  ~href: option<string>=?,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~color: option<BannerColor.t>=?,
  ~size: option<BannerHorizontalSize.t>=?,

  ~children: React.element,
) => BannerHorizontalProto.make(
//  ~nodeRef = ?nodeRef,
  ~tag = #section,
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
