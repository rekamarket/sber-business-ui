@module("./ButtonLinkProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot;

@genType
type styleProps = {
  "size": ButtonLinkSize.t,
  "variant": ButtonLinkVariant.t,
}

@genType
type tag = [
  | AHTML.tag
]

type props = {
  ...styleProps,

  "tag": tag,
  "href": string,
  "className": string,
  "children": React.element,
}

@obj external makeProps:(
  ~tag: tag,
  ~href: string,
  ~className: string,

  ~size: ButtonLinkSize.t,
  ~variant: ButtonLinkVariant.t,

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

        ButtonLinkLayer.resolve(
          ~size = props["size"],
          ~variant = props["variant"],
        ),
      ]),
      ~href = props["href"],
      ()
    ),

    [props["children"]],
  )
}
