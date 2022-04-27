@module("./BannerVerticalProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot;

@genType
type styleProps = {
  "color": BannerVerticalColor.t,
  "size": BannerVerticalSize.t,
}

@genType
type tag = [
  | DivHTML.tag
  | SectionHTML.tag
  | AsideHTML.tag
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

  ~color: BannerVerticalColor.t,
  ~size: BannerVerticalSize.t,

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

        BannerVerticalLayer.resolve(
          ~color = props["color"],
          ~size = props["size"],
        ),
      ]),
      ()
    ),
    [props["children"]],
  )
}
