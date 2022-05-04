@module("./ButtonProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot;

type styleProps = {
  size: ButtonSize.t,
  variant: ButtonVariant.t,
}

type tag = [
  | ButtonHTML.tag
]

let make = (
  ~tag: tag,
  ~className: string,

  ~size: ButtonSize.t,
  ~variant: ButtonVariant.t,

  ~children: React.element,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),

    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        className,

        ButtonLayer.resolve(
          ~size,
          ~variant,
        ),
      ]),
      ()
    ),

    [children],
  )
}
