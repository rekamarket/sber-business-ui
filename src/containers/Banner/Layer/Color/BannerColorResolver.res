type t = BannerColor.t
type variant = BannerColor.variant

@module("./BannerColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #graphite => style.graphite
}
