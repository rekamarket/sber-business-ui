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
  ~nodeRef: option<ReactDOM.domRef>=?,
  ~tag: tag,
  ~href: string,
  ~className: string,
  ~style: option<Retype.style>=?,  

  ~size: ButtonLinkSize.t,
  ~variant: ButtonLinkVariant.t,

  ~children: React.element,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),

    ReactDOM.domProps(
      ~ref = ?nodeRef,
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
      ()
    ),

    [children],
  )
}
