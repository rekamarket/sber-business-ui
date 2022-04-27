type t = Color.t
type variant = Color.variant

@module("./ColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #asphalt  => style.asphalt
| #graphite => style.graphite
};
