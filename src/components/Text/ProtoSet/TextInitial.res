@module("./TextProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot

type styleProps = {
  color: Color.t,

  fontSize: FontSize.t,
  fontWeight: FontWeight.t,
  fontFamily: FontFamily.t,
  fontStyle: FontStyle.t,

  textTransform: TextTransform.t,
}

@genType
type tag = [
  | AbbrHTML.tag
  | BHTML.tag
  | DfnHTML.tag
  | EmHTML.tag
  | IHTML.tag
  | SmallHTML.tag
  | SpanHTML.tag
  | StrongHTML.tag
]

let make = (
  ~tag: tag,
  ~className: string,

  ~color: Color.t,

  ~fontFamily: FontFamily.t,
  ~fontSize: FontSize.t,
  ~fontStyle: FontStyle.t,
  ~fontWeight: FontWeight.t,

  ~textTransform: TextTransform.t,

  ~children: React.element,
) => {
  React.createElementVariadic(
    ReactDOM.stringToComponent(tag :> string),
    ReactDOM.domProps(
      ~className = Cn.make([
        classNameRoot,
        className,

        ColorLayer.resolve(
          ~color,
        ),

        FontLayer.resolve(
          ~fontFamily,
          ~fontSize,
          ~fontStyle,
          ~fontWeight,
        ),

        TextTransformLayer.resolve(
          ~textTransform,
        ),
      ]),
      ()
    ),
    [children],
  )
}
