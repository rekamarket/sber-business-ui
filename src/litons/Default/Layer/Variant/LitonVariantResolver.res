type t = LitonVariant.t
type variant = LitonVariant.variant

@module("./LitonVariantStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #graphite => style.graphite
}
