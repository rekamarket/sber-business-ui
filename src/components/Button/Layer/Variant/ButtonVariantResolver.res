type t = ButtonVariant.t
type variant = ButtonVariant.variant

@module("./ButtonVariantStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #graphite => style.graphite
}
