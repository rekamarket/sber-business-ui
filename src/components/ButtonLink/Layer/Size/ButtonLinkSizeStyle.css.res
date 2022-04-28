type options = ButtonLinkSize.options
type resolve = ButtonLinkSize.resolve
type variant = ButtonLinkSize.variant
let { options } = module(ButtonLinkSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    fontSize: value.fontSize,
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
  }
})
