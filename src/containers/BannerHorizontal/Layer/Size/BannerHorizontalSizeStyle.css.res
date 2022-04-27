type options = BannerHorizontalSize.options
type resolve = BannerHorizontalSize.resolve
type variant = BannerHorizontalSize.variant
let { options } = module(BannerHorizontalSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    blockSize: value.blockSize,
    inlineSize: value.inlineSize,
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
  }
})
