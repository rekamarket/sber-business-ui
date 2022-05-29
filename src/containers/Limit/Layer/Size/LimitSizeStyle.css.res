type options = LimitSize.options
type resolve = LimitSize.resolve
type variant = LimitSize.variant
let { options } = module(LimitSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {{
	paddingBlock: value.paddingBlock,
	paddingInline: value.paddingInline,
	gap: value.gap,
	borderThickness: "1px",
}})
