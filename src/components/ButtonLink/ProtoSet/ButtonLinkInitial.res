@module("./ButtonLinkProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot

type styleProps = {
  size: ButtonLinkSize.t,
  variant: ButtonLinkVariant.t,
}

type tag = [
| AHTML.tag
]

let make = (
//  ~nodeRef: option<ReactDOM.domRef>=?,
  ~tag: tag,
  ~href: string,
  ~className: string,
  ~style: option<Retype.style>=?,  

  ~size: ButtonLinkSize.t,
  ~variant: ButtonLinkVariant.t,

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
      // ~ref = ?nodeRef,
      ~href,
      ~className = Cn.make([
        classNameRoot,
        className,

        ButtonLinkLayer.resolve(
          ~size,
          ~variant,
        ),
      ]),
      ~style = ?style,

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
