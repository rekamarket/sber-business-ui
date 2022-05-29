type t = LimitSize.t
type variant = LimitSize.variant

@module("./LimitSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #xl => style.xl
| #l  => style.l
| #m  => style.m
| #s  => style.s
}
