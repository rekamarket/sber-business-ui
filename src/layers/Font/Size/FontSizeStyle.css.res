type options = FontSize.options
type resolve = FontSize.resolve
type variant = FontSize.variant
let { options } = module(FontSize)

@module("@vanilla-extract/css") external styles: (options, resolve) => variant = "styleVariants"

let make = styles(options, (value) => {
  let capSize = CapSize.createStyleObject({
    capHeight: value,
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
    lineHeight: capSize.lineHeight,
    fontSize: capSize.fontSize,

    after: {
      content: `""`,
      marginTop: capSize.\"::after".marginTop,
      display: "table",
    },
    before: {
      content: `""`,
      marginBottom: capSize.\"::before".marginBottom,
      display: "table",
    },
  }
})
