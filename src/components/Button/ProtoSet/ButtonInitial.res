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
  ~nodeRef: option<ReactDOM.domRef>=?,
  ~tag: tag,
  ~className: string,
  ~style: option<Retype.style>=?,

  ~size: ButtonSize.t,
  ~variant: ButtonVariant.t,

  ~children: React.element,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),

    ReactDOM.domProps(
      ~ref = ?nodeRef,
      ~className = Cn.make([
        classNameRoot,
        className,

        ButtonLayer.resolve(
          ~size,
          ~variant,
        ),
      ]),
      ~style = ?style,
      ()
    ),

    [children],
  )
}
