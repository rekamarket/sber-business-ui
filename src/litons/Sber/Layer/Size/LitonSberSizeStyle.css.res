type options = LitonSberSize.options
type resolve = LitonSberSize.resolve
type variant = LitonSberSize.variant
let { options } = module(LitonSberSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    fontSize: value.fontSize,
    iconGap: value.iconGap,
    iconSize: value.iconSize,
    lineHeight: value.lineHeight,
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
  }
})
