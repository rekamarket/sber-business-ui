type options = BannerVerticalSize.options
type resolve = BannerVerticalSize.resolve
type variant = BannerVerticalSize.variant
let { options } = module(BannerVerticalSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    blockSize: value.blockSize,
    inlineSize: value.inlineSize,
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
  }
})
