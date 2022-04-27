type t = BannerHorizontalSize.t
let { options } = module(BannerHorizontalSize)

let titleFontSize = (. key: t) => switch (key) {
| #xs => options.xs.titleFontSize
| #s  => options.s.titleFontSize
| #m  => options.m.titleFontSize
| #l  => options.l.titleFontSize
| #xl => options.xl.titleFontSize
};
