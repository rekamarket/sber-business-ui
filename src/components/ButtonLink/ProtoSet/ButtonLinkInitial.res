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
  ~tag: tag,
  ~href: string,
  ~className: string,

  ~size: ButtonLinkSize.t,
  ~variant: ButtonLinkVariant.t,

  ~children: React.element,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),

    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        className,

        ButtonLinkLayer.resolve(
          ~size,
          ~variant,
        ),
      ]),
      ~href,
      ()
    ),

    [children],
  )
}
