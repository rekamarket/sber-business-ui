type t = ButtonSberSize.t
type variant = ButtonSberSize.variant

@module("./ButtonSberSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #sm  => style.sm
| #md  => style.md
| #lg  => style.lg
| #xlg => style.xlg
};
