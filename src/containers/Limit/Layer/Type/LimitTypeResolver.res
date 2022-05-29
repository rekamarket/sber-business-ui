type t = LimitType.t
type variant = LimitType.variant

@module("./LimitTypeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #bordered   => style.bordered
| #borderless => style.borderless
}
