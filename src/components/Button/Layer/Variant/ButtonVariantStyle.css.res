type options = ButtonVariant.options
type resolve = ButtonVariant.resolve
type variant = ButtonVariant.variant
let { options } = module(ButtonVariant)

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
