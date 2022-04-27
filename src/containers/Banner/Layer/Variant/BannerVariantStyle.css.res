type options = BannerVariant.options
type resolve = BannerVariant.resolve
type variant = BannerVariant.variant
let { options } = module(BannerVariant)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    color: value.color,
  }
})
