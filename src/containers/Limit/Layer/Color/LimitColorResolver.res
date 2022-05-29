type t = LimitColor.t
type variant = LimitColor.variant

@module("./LimitColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #light => style.light
| #dark  => style.dark
}
