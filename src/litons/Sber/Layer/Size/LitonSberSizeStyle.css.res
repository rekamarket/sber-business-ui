type options = LitonSberSize.options
type resolve = LitonSberSize.resolve
type variant = LitonSberSize.variant
let { options } = module(LitonSberSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  let capSize = CapSize.createStyleObject({
    capHeight: value.capSize,
    lineGap: 0,

    fontMetrics: {
      familyName: FontFamily.name.display,
      capHeight: 700,
      ascent: 950,
      descent: -333,
      lineGap: 0,
      unitsPerEm: 1340,
      xHeight: 520,
    },
  })

  {
    paddingBlock: value.paddingBlock,
    paddingInline: value.paddingInline,

    iconGap: value.iconGap,
    iconSize: value.iconSize,

    capSize: capSize.fontSize,
    lineGap: capSize.lineHeight,
    capTop: capSize.\"::after".marginTop,
    capBottom: capSize.\"::before".marginBottom,
  }
})
