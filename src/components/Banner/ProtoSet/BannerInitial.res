@module("./BannerProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot;

@genType
type styleProps = {
  "color": Color.t,
}

@genType
type tag = [
  | DivHTML.tag
  | PHTML.tag
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

  ~color: Color.t,

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

        ColorLayer.resolve(
          ~color = props["color"],
        ),
      ]),
      ()
    ),
    [props["children"]],
  )
}
