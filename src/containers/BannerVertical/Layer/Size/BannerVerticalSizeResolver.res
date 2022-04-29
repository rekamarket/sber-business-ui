type t = BannerVerticalSize.t
type area = BannerVerticalSize.area
type variant = BannerVerticalSize.variant

@module("./BannerVerticalSizeStyle.css.js") external style: variant = "make"
@module("./BannerVerticalSizeStyle.css.js") external areas: area = "areas"

let make = (. key: t) => switch (key) {
| #xsNoCTA => style.xsNoCTA
| #xs      => style.xs
| #s       => style.s
| #m       => style.m
| #l       => style.l
| #xl      => style.xl
};
