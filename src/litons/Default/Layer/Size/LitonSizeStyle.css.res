type options = LitonSize.options
type resolve = LitonSize.resolve
type variant = LitonSize.variant
let {options} = module(LitonSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, value => {
  let capSize = CapSize.createStyleObject({
    capHeight: value.capSize,
    lineGap: 0,
    fontMetrics: {
      familyName: FontFamily.name.display,
      capHeight: 1200,
      ascent: 1600,
      descent: -600,
      lineGap: 0,
      unitsPerEm: 2048,
      xHeight: 800,
    },
  })

  {
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,
    capSize: capSize.fontSize,
    lineGap: capSize.lineHeight,
    capTop: capSize.\"::after".marginTop,
    capBottom: capSize.\"::before".marginBottom,
  }
})
