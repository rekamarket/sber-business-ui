type options = ButtonSberSize.options
type resolve = ButtonSberSize.resolve
type variant = ButtonSberSize.variant
let { options } = module(ButtonSberSize)

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
