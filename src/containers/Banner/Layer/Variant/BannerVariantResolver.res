type t = BannerVariant.t
type variant = BannerVariant.variant

@module("./BannerVariantStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #horizontal => style.horizontal
| #vertical   => style.vertical
};
