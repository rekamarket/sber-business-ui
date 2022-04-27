type t = BannerVerticalColor.t
type variant = BannerVerticalColor.variant

@module("./BannerVerticalColorStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #snow     => style.snow
| #graphite => style.graphite
};
