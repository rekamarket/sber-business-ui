type options = ButtonSberVariant.options
type resolve = ButtonSberVariant.resolve
type variant = ButtonSberVariant.variant
let { options } = module(ButtonSberVariant)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    color: value.color,
    borderColor: value.borderColor,
    backgroundColor: value.backgroundColor,
    borderStyle: "solid",
    transition: ".2s color ease-in, .2s border ease-in, .2s background ease-in",
    iconColor: value.iconColor,

    hover: value.hover,
    active: value.active,
  }
})
