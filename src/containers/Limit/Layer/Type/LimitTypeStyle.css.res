type options = LimitType.options
type resolve = LimitType.resolve
type variant = LimitType.variant
let { options } = module(LimitType)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {{
  borderStyle: "solid",
  borderColor: value.borderColor,
}})
