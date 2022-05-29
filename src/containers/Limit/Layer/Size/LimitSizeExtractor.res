type t = LimitSize.t
let { options } = module(LimitSize)

let titleFontSize = (. key: t) => switch (key) {
| #xl      => options.xl.titleFontSize
| #l       => options.l.titleFontSize
| #m       => options.m.titleFontSize
| #s       => options.s.titleFontSize
}

let descriptionFontSize = (. key: t) => switch (key) {
| #xl      => options.xl.descriptionFontSize
| #l       => options.l.descriptionFontSize
| #m       => options.m.descriptionFontSize
| #s       => options.s.descriptionFontSize
}

let linkSize = (. key: t) => switch (key) {
| #xl      => options.xl.linkSize
| #l       => options.l.linkSize
| #m       => options.m.linkSize
| #s       => options.s.linkSize
}

let cornerRadius = (. key: t) => switch (key) {
| #xl      => options.xl.cornerRadius
| #l       => options.l.cornerRadius
| #m       => options.m.cornerRadius
| #s       => options.s.cornerRadius
}
