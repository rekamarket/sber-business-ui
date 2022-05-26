type t = LitonSberSize.t
type variant = LitonSberSize.variant

@module("./LitonSberSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #sm  => style.sm
| #md  => style.md
| #lg  => style.lg
| #xlg => style.xlg
}
