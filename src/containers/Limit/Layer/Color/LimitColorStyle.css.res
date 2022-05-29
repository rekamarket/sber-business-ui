type options = LimitColor.options
type resolve = LimitColor.resolve
type variant = LimitColor.variant
let { options } = module(LimitColor)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {{
  borderColor: value.borderColor,
  iconColor: value.iconColor,
  dividerColor: value.dividerColor,
}})
