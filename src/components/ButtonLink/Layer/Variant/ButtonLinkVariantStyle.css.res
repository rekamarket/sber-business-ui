type options = ButtonLinkVariant.options
type resolve = ButtonLinkVariant.resolve
type variant = ButtonLinkVariant.variant
let { options } = module(ButtonLinkVariant)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    color: value.color,
    backgroundColor: value.backgroundColor,
    transition: ".2s color ease-in, .2s background ease-in",

    hover: value.hover,
    active: value.active,
  }
})
