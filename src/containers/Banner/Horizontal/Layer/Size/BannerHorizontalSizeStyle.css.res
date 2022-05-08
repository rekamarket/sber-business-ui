type options = BannerHorizontalSize.options
type resolve = BannerHorizontalSize.resolve
type variant = BannerHorizontalSize.variant
type area = BannerHorizontalSize.area
let { area, options } = module(BannerHorizontalSize)

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
    gridTemplateColumns: value.gridTemplateColumns,
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
