type t = Color.t
type variant = Color.variant

@module("./ColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow      => style.snow
| #asphalt   => style.asphalt
| #asphalt01 => style.asphalt01
| #asphalt02 => style.asphalt02
| #gray      => style.gray
| #gray02    => style.gray02
| #graphite  => style.graphite
| #sky02     => style.sky02
}
