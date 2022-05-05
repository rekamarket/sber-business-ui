type t = ButtonSberVariant.t
type variant = ButtonSberVariant.variant

@module("./ButtonSberVariantStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #general   => style.general
| #secondary => style.secondary
}
