open ButtonStyleProps

@module("./ButtonStyle.css.js") external classNameRoot: string = "className"

let { displayName } = module(ButtonMeta)
let className = classNameRoot

@react.component
let make = (
  // ~nodeRef: option<ReactDOM.domRef>=?,
  ~className: option<string>=?,
  ~style: option<Retype.style>=?,

  ~size: option<ButtonSize.t>=?,
  ~variant: option<ButtonVariant.t>=?,

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

  ~disabled: option<bool>=?,
  ~children: React.element,
) => ButtonProto.make(
  // ~nodeRef = ?nodeRef,
  ~tag = #button,

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

  ~disabled = ?disabled,
  ~children,
)
