type t = ButtonLinkSize.t
type variant = ButtonLinkSize.variant

@module("./ButtonLinkSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #sm  => style.sm
| #md  => style.md
| #lg  => style.lg
| #xlg => style.xlg
}
