type options = BannerVerticalSize.options
type resolve = BannerVerticalSize.resolve
type variant = BannerVerticalSize.variant
type area = BannerVerticalSize.area
let { area, options } = module(BannerVerticalSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  {
    blockSize: value.blockSize,
    inlineSize: value.inlineSize,
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
    iconBlockSize: value.iconBlockSize,
    iconInlineSize: value.iconInlineSize,
    display: "grid",
    justifyItems: "start",
    gridTemplateAreas: value.gridTemplateAreas,
    gridTemplateRows: value.gridTemplateRows,
    gridGap: value.gridGap,
  }
})

@module("@vanilla-extract/css") external style: ('a) => string = "style"

let areas: area = {
  title: style({
    "gridArea": area.title,
  }),

  description: style({
    "gridArea": area.description,
  }),

  actionCTA: style({
    "gridArea": area.actionCTA,
  }),

  logo: style({
    "gridArea": area.logo,
  }),
}
