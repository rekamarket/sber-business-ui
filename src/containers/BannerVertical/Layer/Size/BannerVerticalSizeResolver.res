type t = BannerVerticalSize.t
type variant = BannerVerticalSize.variant

@module("./BannerVerticalSizeStyle.css.js") external style: variant = "make"

let make = (. key: t) => switch (key) {
| #xs => style.xs
| #s  => style.s
| #m  => style.m
| #l  => style.l
| #xl => style.xl
};
