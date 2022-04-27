type options = BannerHorizontalColor.options
type resolve = BannerHorizontalColor.resolve
type variant = BannerHorizontalColor.variant
let { options } = module(BannerHorizontalColor)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {{ color: value }})
