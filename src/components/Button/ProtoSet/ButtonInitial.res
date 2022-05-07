@module("./ButtonProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot

type styleProps = {
  size: ButtonSize.t,
  variant: ButtonVariant.t,
}

type tag = [
| ButtonHTML.tag
]

let make = (
  // ~nodeRef: option<ReactDOM.domRef>=?,
  ~tag: tag,
  ~className: string,
  ~style: option<Retype.style>=?,

  ~size: ButtonSize.t,
  ~variant: ButtonVariant.t,

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
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),

    ReactDOM.domProps(
      // // ~ref = ?nodeRef,
      ~className = Cn.make([
        classNameRoot,
        className,

        ButtonLayer.resolve(
          ~size,
          ~variant,
        ),
      ]),
      ~style = ?style,

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
      ()
    ),

    [children],
  )
}
