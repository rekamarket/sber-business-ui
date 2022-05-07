@module("./LinkProtoStyle.css.js") external classNameRoot: string = "className"

let className = classNameRoot

type styleProps = {
  color: Color.t,

  fontSize: FontSize.t,
  fontWeight: FontWeight.t,
  fontFamily: FontFamily.t,
  fontStyle: FontStyle.t,

  textDecorationColor: TextDecorationColor.t,
  textDecorationLine: TextDecorationLine.t,
  textDecorationStyle: TextDecorationStyle.t,
  textDecorationThickness: TextDecorationThickness.t,

  textTransform: TextTransform.t,
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

  ~color: Color.t,

  ~fontFamily: FontFamily.t,
  ~fontSize: FontSize.t,
  ~fontStyle: FontStyle.t,
  ~fontWeight: FontWeight.t,

  ~textDecorationColor: TextDecorationColor.t,
  ~textDecorationLine: TextDecorationLine.t,
  ~textDecorationStyle: TextDecorationStyle.t,
  ~textDecorationThickness: TextDecorationThickness.t,

  ~textTransform: TextTransform.t,

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

        ColorLayer.resolve(
          ~color,
        ),

        FontLayer.resolve(
          ~fontFamily,
          ~fontSize,
          ~fontStyle,
          ~fontWeight,
        ),

        TextDecorationLayer.resolve(
          ~textDecorationColor,
          ~textDecorationLine,
          ~textDecorationStyle,
          ~textDecorationThickness,
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
