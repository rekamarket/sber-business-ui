@module("./ButtonProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot;

@genType
type styleProps = {
  "size": ButtonSize.t,
  "variant": ButtonVariant.t,
}

@genType
type tag = [
  | ButtonHTML.tag
]

type props = {
  ...styleProps,

  "tag": tag,
  "className": string,
  "children": React.element,
}

@obj external makeProps:(
  ~tag: tag,
  ~className: string,

  ~size: ButtonSize.t,
  ~variant: ButtonVariant.t,

  ~children: React.element,
  unit
) => props = ""

let make = (props: props) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(props["tag"] :> string),

    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        props["className"],

        ButtonLayer.resolve(
          ~size = props["size"],
          ~variant = props["variant"],
        ),
      ]),
      ()
    ),

    [props["children"]],
  )
}
