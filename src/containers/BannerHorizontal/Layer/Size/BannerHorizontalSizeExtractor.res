type t = BannerHorizontalSize.t
let { options } = module(BannerHorizontalSize)

let titleFontSize = (. key: t) => switch (key) {
| #xsNoCTA => options.xsNoCTA.titleFontSize
| #xs      => options.xs.titleFontSize
| #s       => options.s.titleFontSize
| #m       => options.m.titleFontSize
| #l       => options.l.titleFontSize
| #xl      => options.xl.titleFontSize
}

let descriptionFontSize = (. key: t) => switch (key) {
| #xsNoCTA => options.xsNoCTA.descriptionFontSize
| #xs      => options.xs.descriptionFontSize
| #s       => options.s.descriptionFontSize
| #m       => options.m.descriptionFontSize
| #l       => options.l.descriptionFontSize
| #xl      => options.xl.descriptionFontSize
}

let ctaSize = (. key: t) => switch (key) {
| #xsNoCTA => options.xsNoCTA.ctaSize
| #xs      => options.xs.ctaSize
| #s       => options.s.ctaSize
| #m       => options.m.ctaSize
| #l       => options.l.ctaSize
| #xl      => options.xl.ctaSize
}
