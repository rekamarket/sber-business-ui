type t = LimitColor.t
let { options } = module(LimitColor)

let titleColor = (. key: t) => switch (key) {
| #light => options.light.titleColor
| #dark  => options.dark.titleColor
}

let descriptionColor = (. key: t) => switch (key) {
| #light => options.light.descriptionColor
| #dark  => options.dark.descriptionColor
}

let linkColor = (. key: t) => switch (key) {
| #light => options.light.linkColor
| #dark  => options.dark.linkColor
}

let linkTextDecorationLine = (. key: t) => switch (key) {
| #light => options.light.linkTextDecorationLine
| #dark  => options.dark.linkTextDecorationLine
}
