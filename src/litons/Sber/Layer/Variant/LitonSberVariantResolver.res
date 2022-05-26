type t = LitonSberVariant.t
type variant = LitonSberVariant.variant

@module("./LitonSberVariantStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #general   => style.general
| #secondary => style.secondary
}
