open ButtonLinkStyleProps

@module("./ButtonLinkStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonLinkMeta)
let className = classNameRoot

@react.component
let make = (
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~size: option<LitonSize.t>=?,
  ~variant: option<LitonVariant.t>=?,

  ~tabIndex: option<int>=?,
  ~onBlur: option<Retype.focusEvent => unit>=?,
  ~onClick: option<Retype.mouseEvent => unit>=?,
  ~onFocus: option<Retype.focusEvent => unit>=?,
  ~onMouseDown: option<Retype.mouseEvent => unit>=?,
  ~onMouseLeave: option<Retype.mouseEvent => unit>=?,
  ~onMouseUp: option<Retype.mouseEvent => unit>=?,
  ~onTouchEnd: option<Retype.touchEvent => unit>=?,
  ~onTouchMove: option<Retype.touchEvent => unit>=?,
  ~onTouchStart: option<Retype.touchEvent => unit>=?,

  ~href: string,
  ~hreflang: option<string>=?,
  // ~ping: option<array<string>>=?,
  ~rel: option<string>=?,
  ~\"type": option<string>=?,
  // ~referrerpolicy: option<AHTML.ReferrerPolicy.t>=?,
  ~target: option<AHTML.Target.t>=?,

  ~children: React.element,
) => {
  let size = switch size {
  | Some(s) => s
  | None => styleProps.size
  }

  let variant = switch variant {
  | Some(s) => s
  | None => styleProps.variant
  }

  let target = switch target {
  | Some(s) => s -> AHTML.Target.toString -> Some
  | None => None
  }

  <a
    className=Cn.make([
      classNameRoot,

      switch className {
      | Some(c) => c
      | None => ""
      },

      LitonLayer.resolve(
        ~size,
        ~variant,
      ),
    ])
    style=?style

    tabIndex=?tabIndex
    onBlur=?onBlur
    onClick=?onClick
    onFocus=?onFocus
    onMouseDown=?onMouseDown
    onMouseLeave=?onMouseLeave
    onMouseUp=?onMouseUp
    onTouchEnd=?onTouchEnd
    onTouchMove=?onTouchMove
    onTouchStart=?onTouchStart

    href
    hrefLang=?hreflang
    // ping=?ping
    rel=?rel
    type_=?\"type"
    // referrerPolicy=?referrerpolicy
    target=?target
  >
    {children}
  </a>
}
