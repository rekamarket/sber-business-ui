type t = BannerHorizontalColor.t
type variant = BannerHorizontalColor.variant

@module("./BannerHorizontalColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #graphite => style.graphite
};
