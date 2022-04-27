type options = BannerVerticalColor.options
type resolve = BannerVerticalColor.resolve
type variant = BannerVerticalColor.variant
let { options } = module(BannerVerticalColor)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {{ color: value }})
