type options = LitonSberVariant.options
type resolve = LitonSberVariant.resolve
type variant = LitonSberVariant.variant
let { options } = module(LitonSberVariant)

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
