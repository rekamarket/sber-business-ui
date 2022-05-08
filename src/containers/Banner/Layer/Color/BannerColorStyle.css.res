type options = BannerColor.options
type resolve = BannerColor.resolve
type variant = BannerColor.variant
let { options } = module(BannerColor)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {{ color: value }})
