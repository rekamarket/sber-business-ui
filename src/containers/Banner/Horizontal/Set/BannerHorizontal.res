open BannerHorizontalStyleProps

@module("./BannerHorizontalStyle.css.js") external classNameRoot: string = "className"

let {displayName} = module(BannerHorizontalMeta)
let className = classNameRoot

external dangerousTagCast: BannerHorizontalProto.section => BannerHorizontalProto.tag = "%identity"

@react.component
let make = (
  ~tag: option<BannerHorizontalProto.section>,
  ~description: string,
  ~background: string,
  ~href: option<string>=?,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,
  ~color: option<BannerColor.t>=?,
  ~size: option<BannerHorizontalSize.t>=?,
  ~cornerRadius: option<CornerRadius.t>=?,
  ~children: React.element,
) =>
  BannerHorizontalProto.make(
    ~tag=switch tag {
    | Some(t) => t->dangerousTagCast
    | None => #section
    },
    ~description,
    ~background,
    ~href=switch href {
    | Some(h) => h
    | None => `https://developers.sber.ru/docs/`
    },
    ~className=Cn.make([
      classNameRoot,
      switch className {
      | Some(c) => c
      | None => ""
      },
    ]),
    ~style?,
    ~color=switch color {
    | Some(s) => s
    | None => styleProps.color
    },
    ~size=switch size {
    | Some(s) => s
    | None => styleProps.size
    },
    ~cornerRadius=switch cornerRadius {
    | Some(s) => s
    | None => styleProps.cornerRadius
    },
    ~children,
  )
