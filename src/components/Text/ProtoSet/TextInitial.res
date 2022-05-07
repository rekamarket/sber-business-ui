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
//  ~nodeRef: option<ReactDOM.domRef>=?,
  ~tag: tag,
  ~className: string,
  ~style: option<Retype.style>=?,

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
      // ~ref = ?nodeRef,
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
      ~style = ?style,
      ()
    ),
    [children],
  )
}
