type options = ButtonSize.options
type resolve = ButtonSize.resolve
type variant = ButtonSize.variant
let { options } = module(ButtonSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    fontSize: value.fontSize,
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
  }
})
