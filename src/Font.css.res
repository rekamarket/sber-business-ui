@module("@vanilla-extract/css") external globalFontFace: (string, 'a) => string = "globalFontFace"

let regular = globalFontFace("SBSansDisplay", {
  "fontStyle": "normal",
  "fontWeight": 200,
  "src": "url('./fonts/SBSansDisplay-Regular.ttf')",
})

let semibold = globalFontFace("SBSansDisplay", {
  "fontStyle": "normal",
  "fontWeight": "bold",
  "src": "url('./fonts/SBSansDisplay-SemiBold.ttf')",
})
