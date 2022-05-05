type t = ButtonSize.t
type variant = ButtonSize.variant

@module("./ButtonSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #sm  => style.sm
| #md  => style.md
| #lg  => style.lg
| #xlg => style.xlg
}
