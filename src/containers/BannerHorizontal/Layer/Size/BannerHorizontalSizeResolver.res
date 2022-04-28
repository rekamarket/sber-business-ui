type t = BannerHorizontalSize.t
type area = BannerHorizontalSize.area
type variant = BannerHorizontalSize.variant

@module("./BannerHorizontalSizeStyle.css.js") external style: variant = "make"
@module("./BannerHorizontalSizeStyle.css.js") external areas: area = "areas"

let make = (. key: t) => switch (key) {
| #xsNoCTA => style.xsNoCTA
| #xs      => style.xs
| #s       => style.s
| #m       => style.m
| #l       => style.l
| #xl      => style.xl
};
