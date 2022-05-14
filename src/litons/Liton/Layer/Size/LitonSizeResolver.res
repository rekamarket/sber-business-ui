type t = LitonSize.t
type variant = LitonSize.variant

@module("./LitonSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #sm  => style.sm
| #md  => style.md
| #lg  => style.lg
| #xlg => style.xlg
}