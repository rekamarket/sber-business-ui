type t = ButtonLinkVariant.t
type variant = ButtonLinkVariant.variant

@module("./ButtonLinkVariantStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #graphite => style.graphite
}
