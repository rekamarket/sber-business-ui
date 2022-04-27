type options = BannerSize.options
type resolve = BannerSize.resolve
type variant = BannerSize.variant
let { options } = module(BannerSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    fontSize: value.fontSize,
  }
})
