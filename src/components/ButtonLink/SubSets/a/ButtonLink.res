open ButtonLinkStyleProps

@module("./ButtonLinkStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonLinkMeta)
let className = classNameRoot

@react.component
let make = (
//  ~nodeRef: option<ReactDOM.domRef>=?,
  ~href: string,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~size: option<ButtonLinkSize.t>=?,
  ~variant: option<ButtonLinkVariant.t>=?,

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

  ~children: React.element,
) => ButtonLinkProto.make(
//  ~nodeRef = ?nodeRef,
  ~tag = #a,
  ~href,

  ~className = Cn.make([classNameRoot, switch className {
  | Some(c) => c
  | None => ""
  }]),
  ~style = ?style,

  ~size = switch size {
  | Some(s) => s
  | None => styleProps.size
  },

  ~variant = switch variant {
  | Some(s) => s
  | None => styleProps.variant
  },

  ~tabIndex = ?tabIndex,
  ~onBlur = ?onBlur,
  ~onClick = ?onClick,
  ~onFocus = ?onFocus,
  ~onMouseDown = ?onMouseDown,
  ~onMouseLeave = ?onMouseLeave,
  ~onMouseUp = ?onMouseUp,
  ~onTouchEnd = ?onTouchEnd,
  ~onTouchMove = ?onTouchMove,
  ~onTouchStart = ?onTouchStart,

  ~children,
)
